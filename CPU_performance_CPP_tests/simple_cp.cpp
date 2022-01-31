// g++ simple_cp.cpp -o simple_cp  -std=c++14 

#include <iostream>
#include <cstdio>
#include <chrono>
#include <stdint.h>

#include <sys/time.h>
#define CODE_SIZE 16
#define DTYPE uint8_t

using milli = std::chrono::milliseconds;

long num_vectors = 10 * 1000 * 1000; 

#define RUN_FUNC(FNAME)                                                     \
        t0 = std::chrono::high_resolution_clock::now();                     \
        FNAME(codes_cp_from, codes_cp_to);                                  \
        duration = std::chrono::duration_cast<milli>(                       \
             std::chrono::high_resolution_clock::now() - t0).count() / 1000.0; \
        print_throughput(duration, total_size);

void print_throughput(
    double duration, // seconds
    long total_size) { // bytes

    std::cout << "Time = " << duration << " seconds\n";
    std::cout << "Throughput" << total_size / duration / 1e9 << " GB/s\n";
}

void cp_vanilla(DTYPE* codes_cp_from, DTYPE* codes_cp_to) {

        for (int j = 0; j < num_vectors; j++) {
#pragma unroll(16)
            for (int k = 0; k < CODE_SIZE; k++) {
                codes_cp_to[j * CODE_SIZE + k] = codes_cp_from[j * CODE_SIZE + k];
            }
        }
}

int main() {
  
    DTYPE* codes_cp_from = new DTYPE[num_vectors * CODE_SIZE]; 
    DTYPE* codes_cp_to = new DTYPE[num_vectors * CODE_SIZE]; 
    long total_size = num_vectors * CODE_SIZE * sizeof(DTYPE);
    memset(codes_cp_from, 0, total_size);
    memset(codes_cp_to, 0, total_size);

    std::cout << "Scanning " << num_vectors << " PQ codes\n"
      << "length per code = " << CODE_SIZE << "\nbytes per code = " << sizeof(DTYPE) << "\n"
      << "Total size = " << total_size << " bytes\n";

    auto t0 = std::chrono::high_resolution_clock::now();
    double duration;

    uint64_t tmp_array[CODE_SIZE];

    for (int outer_i = 0; outer_i < 3; outer_i++) {

        std::cout << "\n=== Iteration " << outer_i << "===" << std::endl;

        // cp from src to destimation
        std::cout << "\ncp from src to destimation: \n";
        // t0 = std::chrono::high_resolution_clock::now();
        // cp_vanilla(codes_cp_from, codes_cp_to);
        // duration = std::chrono::duration_cast<milli>(
        //      std::chrono::high_resolution_clock::now() - t0).count() / 1000.0;
        // print_throughput(duration, total_size);
        RUN_FUNC(cp_vanilla)

        // cp from src to destimation (manual unroll 16 times)
        std::cout << "\ncp from src to destimation (manual unroll 16 times): \n";
        t0 = std::chrono::high_resolution_clock::now();
        for (int j = 0; j < num_vectors; j++) {
            tmp_array[0] = codes_cp_from[0];
            tmp_array[1] = codes_cp_from[1];
            tmp_array[2] = codes_cp_from[2];
            tmp_array[3] = codes_cp_from[3];
            tmp_array[4] = codes_cp_from[4];
            tmp_array[5] = codes_cp_from[5];
            tmp_array[6] = codes_cp_from[6];
            tmp_array[7] = codes_cp_from[7];
            tmp_array[8] = codes_cp_from[8];
            tmp_array[9] = codes_cp_from[9];
            tmp_array[10] = codes_cp_from[10];
            tmp_array[11] = codes_cp_from[11];
            tmp_array[12] = codes_cp_from[12];
            tmp_array[13] = codes_cp_from[13];
            tmp_array[14] = codes_cp_from[14];
            tmp_array[15] = codes_cp_from[15];
        }
        duration = std::chrono::duration_cast<milli>(
             std::chrono::high_resolution_clock::now() - t0).count() / 1000.0;
        print_throughput(duration, total_size);

        // cp from src to destimation + uint64_t conversion (manual unroll 16 times)
        std::cout << "\ncp from src to destimation + uint64_t conversion (manual unroll 16 times): \n";
        t0 = std::chrono::high_resolution_clock::now();
        for (int j = 0; j < num_vectors; j++) {
            tmp_array[0] = (uint64_t) codes_cp_from[0];
            tmp_array[1] = (uint64_t) codes_cp_from[1];
            tmp_array[2] = (uint64_t) codes_cp_from[2];
            tmp_array[3] = (uint64_t) codes_cp_from[3];
            tmp_array[4] = (uint64_t) codes_cp_from[4];
            tmp_array[5] = (uint64_t) codes_cp_from[5];
            tmp_array[6] = (uint64_t) codes_cp_from[6];
            tmp_array[7] = (uint64_t) codes_cp_from[7];
            tmp_array[8] = (uint64_t) codes_cp_from[8];
            tmp_array[9] = (uint64_t) codes_cp_from[9];
            tmp_array[10] = (uint64_t) codes_cp_from[10];
            tmp_array[11] = (uint64_t) codes_cp_from[11];
            tmp_array[12] = (uint64_t) codes_cp_from[12];
            tmp_array[13] = (uint64_t) codes_cp_from[13];
            tmp_array[14] = (uint64_t) codes_cp_from[14];
            tmp_array[15] = (uint64_t) codes_cp_from[15];
        }
        duration = std::chrono::duration_cast<milli>(
             std::chrono::high_resolution_clock::now() - t0).count() / 1000.0;
        print_throughput(duration, total_size);


        // in cache copy performance: only copy the first bytes
        std::cout << "\nin cache copy performance: only copy the first bytes: \n";
        t0 = std::chrono::high_resolution_clock::now();
        for (int j = 0; j < num_vectors; j++) {
#pragma unroll(16)
            for (int k = 0; k < CODE_SIZE; k++) {
                codes_cp_to[k] = codes_cp_from[k];
            }
        }
        duration = std::chrono::duration_cast<milli>(
             std::chrono::high_resolution_clock::now() - t0).count() / 1000.0;
        print_throughput(duration, total_size);

        // in cache copy (with uint8_t -> uint64_t transform)
        std::cout << "\nin cache copy (with uint8_t -> uint64_t transform): \n";
        t0 = std::chrono::high_resolution_clock::now();
        for (int j = 0; j < num_vectors; j++) {
#pragma unroll(16)
            for (int k = 0; k < CODE_SIZE; k++) {
                tmp_array[k] = (uint64_t) codes_cp_from[k];
            }
        }
        duration = std::chrono::duration_cast<milli>(
             std::chrono::high_resolution_clock::now() - t0).count() / 1000.0;
        print_throughput(duration, total_size);

        // in cache copy manual unroll (with uint8_t -> uint64_t transform)
        std::cout << "\nin cache copy manual unroll (with uint8_t -> uint64_t transform): \n";
        t0 = std::chrono::high_resolution_clock::now();
        for (int j = 0; j < num_vectors; j++) {
            tmp_array[0] = (uint64_t) codes_cp_from[0];
            tmp_array[1] = (uint64_t) codes_cp_from[1];
            tmp_array[2] = (uint64_t) codes_cp_from[2];
            tmp_array[3] = (uint64_t) codes_cp_from[3];
            tmp_array[4] = (uint64_t) codes_cp_from[4];
            tmp_array[5] = (uint64_t) codes_cp_from[5];
            tmp_array[6] = (uint64_t) codes_cp_from[6];
            tmp_array[7] = (uint64_t) codes_cp_from[7];
            tmp_array[8] = (uint64_t) codes_cp_from[8];
            tmp_array[9] = (uint64_t) codes_cp_from[9];
            tmp_array[10] = (uint64_t) codes_cp_from[10];
            tmp_array[11] = (uint64_t) codes_cp_from[11];
            tmp_array[12] = (uint64_t) codes_cp_from[12];
            tmp_array[13] = (uint64_t) codes_cp_from[13];
            tmp_array[14] = (uint64_t) codes_cp_from[14];
            tmp_array[15] = (uint64_t) codes_cp_from[15];
        }
        duration = std::chrono::duration_cast<milli>(
             std::chrono::high_resolution_clock::now() - t0).count() / 1000.0;
        print_throughput(duration, total_size);
    }

    return 0;
}
