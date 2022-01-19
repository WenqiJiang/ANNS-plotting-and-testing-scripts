import numpy as np

"""
We can abstract the model in a higher level, meaning it should be useful for CPU/GPU/FPGA/ASIC

For FPGA/ASIC, different stages can have different circuit (different FLOPs and bandwidth),
    but they can process these stages in a pipelined manner (concurrently).

For CPU/GPU, the FLOPs and bandwidth are constants across stages, 
    but they have to process data stage by stage.


In terms of caching, we can designate which part of the data can be cached regardless of the 
    types of the hardware.
    (1) OPQ matrix: (d x d) elements
        -> for CPU/GPU this may not in cache because ealier stages never use it;
            for FPGA/ASIC this can be in cache
    (2) IVF index: (nlist x d) elements
        -> be aware of the size of nlist, large indexes may not fit in cache
        -> for batched CPU/GPU implementation this could lead to cache hits, 
            because multiple threads can load the same data from L3 cache 
    (3) the product quantizer: (d x 256) elements
        -> for CPU/GPU this may not in cache because ealier stages never use it;
            for FPGA/ASIC this can be in cache
    (4) distance LUT -> (m x 256) elements
        -> should typically in cache no matter the hardware platform

"""

def get_time_stage_1_OPQ(
    # index settings
    d=128, # 128-d vectors
    dtype='float32',

    # hardware settings
    flops=int(100*1e9),
    bandwidth=int(100*1e9), # bytes per second

    # caching settings
    cache_OPQ_matrix=False):
    """
    Return: 
        (a) time consumption per query needed for stage 1 (in seconds), 
        (b) whether it is memory bound of compute bound, "compute", "memory", or "same compute/memory"
        (c) the imbalance ratio between compute and memory
    """

    assert dtype=='float32', "Currently only support float32"

    n_flop = 2 * d * d # vec-mat-mul
    t_comp = n_flop / flops

    if cache_OPQ_matrix:
        t_mem = 0
    else:
        # OPQ matrix: (d x d) elements
        n_bytes = 4 * d * d
        t_mem = n_bytes / bandwidth

    # compute and memory access happens simultaneously
    t_all = None
    imbalance_ratio = None
    if t_comp == t_mem:
        t_all = t_comp
        imbalance_ratio = 1
        bound = "same compute/memory"
    elif t_comp > t_mem:
        t_all = t_comp
        if t_mem > 0:
            imbalance_ratio = t_comp / t_mem
        else: 
            imbalance_ratio = float('inf')
        bound = "compute"
    else:
        t_all = t_mem
        imbalance_ratio = t_mem / t_comp
        bound = "memory"

    return t_all, bound, imbalance_ratio

print("compute OPQ for 10,000 queries: {} sec\tbound by {}\timbalance ratio: {}".format(
    10000 * get_time_stage_1_OPQ()[0], get_time_stage_1_OPQ()[1], get_time_stage_1_OPQ()[2]))


def get_time_stage_2_index_distance(
    # index settings
    d=128, # 128-d vectors
    nlist=65536, 
    dtype='float32',

    # hardware settings
    flops=int(100*1e9),
    bandwidth=int(100*1e9), # bytes per second

    # caching settings
    cache_IVF_index_reuse_time=64):
    """
    Return: 
        (a) time consumption per query needed for stage 1 (in seconds), 
        (b) whether it is memory bound of compute bound, "compute", "memory", or "same compute/memory"
        (c) the imbalance ratio between compute and memory

    cache_IVF_index_reuse_time (1=no reuse), 1 query per core running simultaneously, share index through L3 cache
        when there are 64 cores, reused them by 64 times 
    """

    assert dtype=='float32', "Currently only support float32"
    assert cache_IVF_index_reuse_time >= 1

    # scan coarse-grained centroids ||x - C||^2
    n_flop = nlist * (d * 3)
    t_comp = n_flop / flops


    # IVF index: (nlist x d) elements
    n_bytes = 4 * nlist * d
    t_mem = n_bytes / bandwidth / cache_IVF_index_reuse_time

    # compute and memory access happens simultaneously
    t_all = None
    imbalance_ratio = None
    if t_comp == t_mem:
        t_all = t_comp
        imbalance_ratio = 1
        bound = "same compute/memory"
    elif t_comp > t_mem:
        t_all = t_comp
        if t_mem > 0:
            imbalance_ratio = t_comp / t_mem
        else: 
            imbalance_ratio = float('inf')
        bound = "compute"
    else:
        t_all = t_mem
        imbalance_ratio = t_mem / t_comp
        bound = "memory"

    return t_all, bound, imbalance_ratio

# TODO: either 100flops is under-estimated or my profiling is wrong, it seems only <0.25s used in stage 1~2
print("TODO: either 100flops is under-estimated or my profiling is wrong, it seems only <0.25s used in stage 1~2, and it consumes more than stage 4 in estimation")
# compute index distances for 10,000 queries (nlist=65536, no caching): 3.3554432 sec bound by memory
# compute index distances for 10,000 queries (nlist=65536, assume caching): 2.5165824 sec bound by compute
print("compute index distances for 10,000 queries (nlist=65536, no caching): {} sec\tbound by {}\timbalance ratio: {}".format(
    10000 * get_time_stage_2_index_distance(nlist=65536)[0], 
    get_time_stage_2_index_distance(nlist=65536)[1], 
    get_time_stage_2_index_distance(nlist=65536)[2]))
print("compute index distances for 10,000 queries (nlist=65536, assume caching): {} sec\tbound by {}\timbalance ratio: {}".format(
    10000 * get_time_stage_2_index_distance(nlist=65536, cache_IVF_index_reuse_time=1)[0], 
    get_time_stage_2_index_distance(nlist=65536, cache_IVF_index_reuse_time=1)[1], 
    get_time_stage_2_index_distance(nlist=65536, cache_IVF_index_reuse_time=1)[2]))


def get_time_stage_4_LUT_construction(
    # index settings
    d=128, # 128-d vectors
    nprobe=32, 
    dtype='float32',

    # hardware settings
    flops=int(100*1e9),
    bandwidth=int(100*1e9), # bytes per second

    # caching settings
    cache_product_quantizer=False):
    """
    Return: 
        (a) time consumption per query needed for stage 1 (in seconds), 
        (b) whether it is memory bound of compute bound, "compute", "memory", or "same compute/memory"
        (c) the imbalance ratio between compute and memory
    """

    assert dtype=='float32', "Currently only support float32"

    # stage 3: construct distance LUT (x - row) * (x - row) * 256
    n_flop = nprobe * 256 * (d * 3)
    t_comp = n_flop / flops

    if cache_product_quantizer:
        t_mem = 0
    else:
        # the product quantizer: (d x 256) elements
        n_bytes = 4 * 256 * d
        t_mem = n_bytes / bandwidth

    # compute and memory access happens simultaneously
    t_all = None
    imbalance_ratio = None
    if t_comp == t_mem:
        t_all = t_comp
        imbalance_ratio = 1
        bound = "same compute/memory"
    elif t_comp > t_mem:
        t_all = t_comp
        if t_mem > 0:
            imbalance_ratio = t_comp / t_mem
        else: 
            imbalance_ratio = float('inf')
        bound = "compute"
    else:
        t_all = t_mem
        imbalance_ratio = t_mem / t_comp
        bound = "memory"

    return t_all, bound, imbalance_ratio

print("distance LUT construction for 10,000 queries (nprobe=32, no caching): {} sec\tbound by {}\timbalance ratio: {}".format(
    10000 * get_time_stage_4_LUT_construction(nprobe=32)[0], 
    get_time_stage_4_LUT_construction(nprobe=32)[1], 
    get_time_stage_4_LUT_construction(nprobe=32)[2]))



def get_time_stage_5_scan_PQ(
    # index settings
    nvecs=int(1e9), 
    m=16, # 16 sub-clusters
    nlist=65536, 
    nprobe=32, 
    dtype='float32',

    # hardware settings
    flops=int(100*1e9),
    bandwidth=int(100*1e9), # bytes per second

    # caching settings
    cache_distance_LUT=True):
    """
    Return: 
        (a) time consumption per query needed for stage 1 (in seconds), 
        (b) whether it is memory bound of compute bound, "compute", "memory", or "same compute/memory"
        (c) the imbalance ratio between compute and memory
    """

    assert dtype=='float32', "Currently only support float32"

    nvec_scanned = nvecs * nprobe / nlist

    # scan PQ codes and do reduction sum 
    n_flop = nvec_scanned * m
    t_comp = n_flop / flops

    # assume PQ codes are always in memory
    if cache_distance_LUT:
        n_bytes = nvec_scanned * m
    else:
        # distance LUT -> (m x 256) elements
        n_bytes = nvec_scanned * m+ m * 256
    t_mem = n_bytes / bandwidth

    # compute and memory access happens simultaneously
    t_all = None
    imbalance_ratio = None
    if t_comp == t_mem:
        t_all = t_comp
        imbalance_ratio = 1
        bound = "same compute/memory"
    elif t_comp > t_mem:
        t_all = t_comp
        if t_mem > 0:
            imbalance_ratio = t_comp / t_mem
        else: 
            imbalance_ratio = float('inf')
        bound = "compute"
    else:
        t_all = t_mem
        imbalance_ratio = t_mem / t_comp
        bound = "memory"

    return t_all, bound, imbalance_ratio

print("scan PQ codes for 10,000 queries (nlist=65536, nprobe=32, no caching): {} sec\tbound by {}\timbalance ratio: {}".format(
    10000 * get_time_stage_5_scan_PQ(nlist=65536, nprobe=32)[0], 
    get_time_stage_5_scan_PQ(nlist=65536, nprobe=32)[1], 
    get_time_stage_5_scan_PQ(nlist=65536, nprobe=32)[2]))


def get_qps_cpu_gpu(
    # index settings
    nvecs=int(1e9), 
    d=128, # 128-d vectors
    m=16, # 16 sub-clusters
    nlist=65536, 
    nprobe=32, 
    OPQ_enable=True,
    dtype='float32',

    # hardware settings
    flops=int(100*1e9),
    bandwidth=int(100*1e9), # bytes per second

    # caching settings
    cache_OPQ_matrix=False,
    cache_IVF_index_reuse_time=64, # 1 query per core, share through L3 cache
    cache_product_quantizer=False,
    cache_distance_LUT=True):

    """
    Given a set of inputs parameters including {hardware capability, algorithm setting}, 
        predict the QPS

    For CPU/GPU, the FLOPs and bandwidth are constants across stages, 
        but they have to process data stage by stage.
    """

    t_all_stage_1, bound_stage_1, imbalance_ratio_stage_1 = get_time_stage_1_OPQ(
        # index settings
        d, # 128-d vectors
        dtype,

        # hardware settings
        flops,
        bandwidth, # bytes per second

        # caching settings
        cache_OPQ_matrix)
    print("Stage 1: time consumption per query: {}\tQPS: {}\tbound by: {}\timbalance: {}".format(
        t_all_stage_1, 1/t_all_stage_1, bound_stage_1, imbalance_ratio_stage_1))

    t_all_stage_2, bound_stage_2, imbalance_ratio_stage_2 = get_time_stage_2_index_distance(
        # index settings
        d, # 128-d vectors
        nlist, 
        dtype,

        # hardware settings
        flops,
        bandwidth, # bytes per second

        # caching settings
        cache_IVF_index_reuse_time)
    print("Stage 2: time consumption per query: {}\tQPS: {}\tbound by: {}\timbalance: {}".format(
        t_all_stage_2, 1/t_all_stage_2, bound_stage_2, imbalance_ratio_stage_2))

    t_all_stage_4, bound_stage_4, imbalance_ratio_stage_4 = get_time_stage_4_LUT_construction(
        # index settings
        d, # 128-d vectors
        nprobe, 
        dtype,

        # hardware settings
        flops,
        bandwidth, # bytes per second

        # caching settings
        cache_product_quantizer)
    print("Stage 4: time consumption per query: {}\tQPS: {}\tbound by: {}\timbalance: {}".format(
        t_all_stage_4, 1/t_all_stage_4, bound_stage_4, imbalance_ratio_stage_4))


    t_all_stage_5, bound_stage_5, imbalance_ratio_stage_5 = get_time_stage_5_scan_PQ(
        # index settings
        nvecs, 
        m, # 16 sub-clusters
        nlist, 
        nprobe, 
        dtype,

        # hardware settings
        flops,
        bandwidth, # bytes per second

        # caching settings
        cache_distance_LUT)
    print("Stage 5: time consumption per query: {}\tQPS: {}\tbound by: {}\timbalance: {}".format(
        t_all_stage_5, 1/t_all_stage_5, bound_stage_5, imbalance_ratio_stage_5))

    t_all_stages = t_all_stage_1 + t_all_stage_2 + t_all_stage_4 + t_all_stage_5
    print("all time consumption per query: {}\tQPS: {}".format(t_all_stages, 1/t_all_stages))

print('\n\nCPU Performance:')
get_qps_cpu_gpu(
    # index settings
    nvecs=int(1e9), 
    d=128, # 128-d vectors
    m=16, # 16 sub-clusters
    nlist=4096, 
    nprobe=18, 
    OPQ_enable=True,
    dtype='float32',

    # hardware settings
    flops=int(4710*1e9),
    bandwidth=int(272*1e9), # bytes per second

    # caching settings
    cache_OPQ_matrix=False,
    cache_IVF_index_reuse_time=64,
    cache_product_quantizer=False,
    cache_distance_LUT=True)



print('\n\nGPU Performance:')
get_qps_cpu_gpu(
    # index settings
    nvecs=int(5e8), 
    d=128, # 128-d vectors
    m=16, # 16 sub-clusters
    nlist=32768, 
    nprobe=36, 
    OPQ_enable=True,
    dtype='float32',

    # hardware settings
    flops=int(15*1e12),
    bandwidth=int(900*1e9), # bytes per second

    # caching settings
    cache_OPQ_matrix=True, # GPU do matMul for all queries at a time
    cache_IVF_index_reuse_time=float('inf'), # GPU do matMul for all queries at a time
    cache_product_quantizer=False,
    cache_distance_LUT=True)


