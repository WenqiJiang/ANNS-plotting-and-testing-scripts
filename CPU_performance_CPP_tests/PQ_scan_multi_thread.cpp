// g++ PQ_scan_multi_thread.cpp -o PQ_scan_multi_thread -std=c++14 -pthread
// ./PQ_scan_multi_thread <thread_num>

#include <iostream>
#include <cstdio>
#include <chrono>
#include <stdint.h>
#include <pthread.h> 

#include <sys/time.h>
#define CODE_SIZE 16

//#include <boost/multiprecision/cpp_int.hpp>
//using namespace boost::multiprecision;

#define uint8_t uint8_t

using milli = std::chrono::milliseconds;


struct Thread_info {
    size_t num_vectors;
    uint8_t* codes;
    float* distance_LUT; // 16 x 256
    float* result;
};


void* thread_func_unroll_scan_read_codes(void* vargp) {
    
    struct Thread_info* t_info = (struct Thread_info*) vargp;


    size_t num_vectors = t_info -> num_vectors;
    uint8_t* codes = t_info -> codes;
    float* distance_LUT = t_info -> distance_LUT; // 16 x 256
    float* result = t_info -> result;

    float dis[CODE_SIZE]; 
    float* tab_ptr = distance_LUT;

    uint8_t tmp_codes[16];

    for (size_t j = 0; j < num_vectors; j++) {
        uint8_t* code_ptr = codes + j * CODE_SIZE;
  
        tmp_codes[0] = tab_ptr[code_ptr[0]];
        tmp_codes[1] = tab_ptr[code_ptr[1]];
        tmp_codes[2] = tab_ptr[code_ptr[2]];
        tmp_codes[3] = tab_ptr[code_ptr[3]];
        tmp_codes[4] = tab_ptr[code_ptr[4]];
        tmp_codes[5] = tab_ptr[code_ptr[5]];
        tmp_codes[6] = tab_ptr[code_ptr[6]];
        tmp_codes[7] = tab_ptr[code_ptr[7]];
        tmp_codes[8] = tab_ptr[code_ptr[8]];
        tmp_codes[9] = tab_ptr[code_ptr[9]];
        tmp_codes[10] = tab_ptr[code_ptr[10]];
        tmp_codes[11] = tab_ptr[code_ptr[11]];
        tmp_codes[12] = tab_ptr[code_ptr[12]];
        tmp_codes[13] = tab_ptr[code_ptr[13]];
        tmp_codes[14] = tab_ptr[code_ptr[14]];
        tmp_codes[15] = tab_ptr[code_ptr[15]];
    }
    float sum_dis = 
        tmp_codes[0] + tmp_codes[1] + tmp_codes[2] + tmp_codes[3] +
        tmp_codes[4] + tmp_codes[5] + tmp_codes[6] + tmp_codes[7] +
        tmp_codes[8] + tmp_codes[9] + tmp_codes[10] + tmp_codes[11] +
        tmp_codes[12] + tmp_codes[13] + tmp_codes[14] + tmp_codes[15];

    for (size_t j = 0; j < num_vectors; j++) {
        result[j] = sum_dis;
    }
}

void* thread_func_unroll_scan_no_add(void* vargp) {
    
    struct Thread_info* t_info = (struct Thread_info*) vargp;


    size_t num_vectors = t_info -> num_vectors;
    uint8_t* codes = t_info -> codes;
    float* distance_LUT = t_info -> distance_LUT; // 16 x 256
    float* result = t_info -> result;

    float dis[CODE_SIZE]; 
    float* tab_ptr = distance_LUT;

    float* tab_ptr_0 = distance_LUT + 0 * 256;
    float* tab_ptr_1 = distance_LUT + 1 * 256;
    float* tab_ptr_2 = distance_LUT + 2 * 256;
    float* tab_ptr_3 = distance_LUT + 3 * 256;
    float* tab_ptr_4 = distance_LUT + 4 * 256;
    float* tab_ptr_5 = distance_LUT + 5 * 256;
    float* tab_ptr_6 = distance_LUT + 6 * 256;
    float* tab_ptr_7 = distance_LUT + 7 * 256;
    float* tab_ptr_8 = distance_LUT + 8 * 256;
    float* tab_ptr_9 = distance_LUT + 9 * 256;
    float* tab_ptr_10 = distance_LUT + 10 * 256;
    float* tab_ptr_11 = distance_LUT + 11 * 256;
    float* tab_ptr_12 = distance_LUT + 12 * 256;
    float* tab_ptr_13 = distance_LUT + 13 * 256;
    float* tab_ptr_14 = distance_LUT + 14 * 256;
    float* tab_ptr_15 = distance_LUT + 15 * 256;

    for (size_t j = 0; j < num_vectors; j++) {
        uint8_t* code_ptr = codes + j * CODE_SIZE;
  
        dis[0] = tab_ptr_0[code_ptr[0]];
        dis[1] = tab_ptr_1[code_ptr[1]];
        dis[2] = tab_ptr_2[code_ptr[2]];
        dis[3] = tab_ptr_3[code_ptr[3]];
        dis[4] = tab_ptr_4[code_ptr[4]];
        dis[5] = tab_ptr_5[code_ptr[5]];
        dis[6] = tab_ptr_6[code_ptr[6]];
        dis[7] = tab_ptr_7[code_ptr[7]];
        dis[8] = tab_ptr_8[code_ptr[8]];
        dis[9] = tab_ptr_9[code_ptr[9]];
        dis[10] = tab_ptr_10[code_ptr[10]];
        dis[11] = tab_ptr_11[code_ptr[11]];
        dis[12] = tab_ptr_12[code_ptr[12]];
        dis[13] = tab_ptr_13[code_ptr[13]];
        dis[14] = tab_ptr_14[code_ptr[14]];
        dis[15] = tab_ptr_15[code_ptr[15]];
    }
    float sum_dis = 
        dis[0] + dis[1] + dis[2] + dis[3] +
        dis[4] + dis[5] + dis[6] + dis[7] +
        dis[8] + dis[9] + dis[10] + dis[11] +
        dis[12] + dis[13] + dis[14] + dis[15];

    for (size_t j = 0; j < num_vectors; j++) {
        result[j] = sum_dis;
    }
}

void* thread_func_unroll_scan(void* vargp) {
    
    struct Thread_info* t_info = (struct Thread_info*) vargp;


    size_t num_vectors = t_info -> num_vectors;
    uint8_t* codes = t_info -> codes;
    float* distance_LUT = t_info -> distance_LUT; // 16 x 256
    float* result = t_info -> result;


    float dis[CODE_SIZE]; 
    float* tab_ptr = distance_LUT;

    float* tab_ptr_0 = distance_LUT + 0 * 256;
    float* tab_ptr_1 = distance_LUT + 1 * 256;
    float* tab_ptr_2 = distance_LUT + 2 * 256;
    float* tab_ptr_3 = distance_LUT + 3 * 256;
    float* tab_ptr_4 = distance_LUT + 4 * 256;
    float* tab_ptr_5 = distance_LUT + 5 * 256;
    float* tab_ptr_6 = distance_LUT + 6 * 256;
    float* tab_ptr_7 = distance_LUT + 7 * 256;
    float* tab_ptr_8 = distance_LUT + 8 * 256;
    float* tab_ptr_9 = distance_LUT + 9 * 256;
    float* tab_ptr_10 = distance_LUT + 10 * 256;
    float* tab_ptr_11 = distance_LUT + 11 * 256;
    float* tab_ptr_12 = distance_LUT + 12 * 256;
    float* tab_ptr_13 = distance_LUT + 13 * 256;
    float* tab_ptr_14 = distance_LUT + 14 * 256;
    float* tab_ptr_15 = distance_LUT + 15 * 256;

    for (size_t j = 0; j < num_vectors; j++) {
        uint8_t* code_ptr = codes + j * CODE_SIZE;
  
        dis[0] = tab_ptr_0[code_ptr[0]];
        dis[1] = tab_ptr_1[code_ptr[1]];
        dis[2] = tab_ptr_2[code_ptr[2]];
        dis[3] = tab_ptr_3[code_ptr[3]];
        dis[4] = tab_ptr_4[code_ptr[4]];
        dis[5] = tab_ptr_5[code_ptr[5]];
        dis[6] = tab_ptr_6[code_ptr[6]];
        dis[7] = tab_ptr_7[code_ptr[7]];
        dis[8] = tab_ptr_8[code_ptr[8]];
        dis[9] = tab_ptr_9[code_ptr[9]];
        dis[10] = tab_ptr_10[code_ptr[10]];
        dis[11] = tab_ptr_11[code_ptr[11]];
        dis[12] = tab_ptr_12[code_ptr[12]];
        dis[13] = tab_ptr_13[code_ptr[13]];
        dis[14] = tab_ptr_14[code_ptr[14]];
        dis[15] = tab_ptr_15[code_ptr[15]];

        // dis[0] = tab_ptr[0 * 256 + code_ptr[0]];
        // dis[1] = tab_ptr[1 * 256 + code_ptr[1]];
        // dis[2] = tab_ptr[2 * 256 + code_ptr[2]];
        // dis[3] = tab_ptr[3 * 256 + code_ptr[3]];
        // dis[4] = tab_ptr[4 * 256 + code_ptr[4]];
        // dis[5] = tab_ptr[5 * 256 + code_ptr[5]];
        // dis[6] = tab_ptr[6 * 256 + code_ptr[6]];
        // dis[7] = tab_ptr[7 * 256 + code_ptr[7]];
        // dis[8] = tab_ptr[8 * 256 + code_ptr[8]];
        // dis[9] = tab_ptr[9 * 256 + code_ptr[9]];
        // dis[10] = tab_ptr[10 * 256 + code_ptr[10]];
        // dis[11] = tab_ptr[11 * 256 + code_ptr[11]];
        // dis[12] = tab_ptr[12 * 256 + code_ptr[12]];
        // dis[13] = tab_ptr[13 * 256 + code_ptr[13]];
        // dis[14] = tab_ptr[14 * 256 + code_ptr[14]];
        // dis[15] = tab_ptr[15 * 256 + code_ptr[15]];
    
        float sum_dis = 
            dis[0] + dis[1] + dis[2] + dis[3] +
            dis[4] + dis[5] + dis[6] + dis[7] +
            dis[8] + dis[9] + dis[10] + dis[11] +
            dis[12] + dis[13] + dis[14] + dis[15];

        result[j] = sum_dis;
    }
}


void* thread_func_faiss_scan(void* vargp) {

    struct Thread_info* t_info = (struct Thread_info*) vargp;


    size_t num_vectors = t_info -> num_vectors;
    uint8_t* codes = t_info -> codes;
    float* distance_LUT = t_info -> distance_LUT; // 16 x 256
    float* result = t_info -> result;

    for (size_t j = 0; j < num_vectors; j++) {
        uint8_t* cur_codes = codes;
        codes += 8;
        float dis = 0; 
        const float* tab_ptr = distance_LUT;

        for (size_t m = 0; m < CODE_SIZE; m++) {
            dis += tab_ptr[(uint64_t)(*cur_codes++)];
            tab_ptr += 256;
        }

        result[j] = dis;
    }
}


int main(int argc, char *argv[]) {

    if (argc != 2) {
        std::cout << "Usage: ./simple_cp_multi_thread <num_threads>\n";
    }
    int num_threads = std::stoi(argv[1]);

    size_t num_vectors_total = 1000 * 1000 * 1000; 
    size_t num_vectors_per_thread = num_vectors_total / num_threads; 

    // multiple threads manipulate on different pieces of memory
    uint8_t** codes = new uint8_t*[num_threads]; 
    float** distance_LUT = new float*[num_threads];
    float** result = new float*[num_threads];
    for (int i = 0; i < num_threads; i++) {
        codes[i] = new uint8_t[num_vectors_per_thread * CODE_SIZE]; 
        distance_LUT[i] = new float[256 * CODE_SIZE];
        result[i] = new float[num_vectors_per_thread];
    }

    pthread_t thread_obj[num_threads]; 
    struct Thread_info t_info[num_threads];

    // multi-thread manipulate on different partitions of the array
    for (int i = 0; i < num_threads; i++) {
        t_info[i].num_vectors = num_vectors_per_thread;
        t_info[i].codes = codes[i];
        t_info[i].distance_LUT = distance_LUT[i];
        t_info[i].result = result[i];
    }

    std::cout << "Scanning " << num_vectors_total << " PQ codes (" << CODE_SIZE << " bytes per vec), " 
        << ((float) num_vectors_total) * CODE_SIZE / 1e9 << " GB in total";


    auto tstart = std::chrono::high_resolution_clock::now();
    double duration = 0;
    for (int iter = 0; iter < 5; iter++) {

        std::cout << "Iteration " << iter << ": " << std::endl;

        // thread_func_unroll_scan_read_codes
        tstart = std::chrono::high_resolution_clock::now();
        std::cout << "Before Thread\n";
        for (int i = 0; i < num_threads; i++) {
            pthread_create(&thread_obj[i], NULL, thread_func_unroll_scan_read_codes, (void*) &t_info[i]); 
        }
        for (int i = 0; i < num_threads; i++) {
            pthread_join(thread_obj[i], NULL); 
        }
        std::cout << "After Thread\n"; 

        duration = std::chrono::duration_cast<milli>(
             std::chrono::high_resolution_clock::now() - tstart).count() / 1000.0;
        std::cout << "unroll read codes: size = " << num_vectors_total * CODE_SIZE << 
            " bytes\ttime="  << duration << " seconds\n" 
            << "throughput: " << num_vectors_total * CODE_SIZE / duration / 1e9 << "GB/s";


        // thread_func_unroll_scan_no_add
        tstart = std::chrono::high_resolution_clock::now();
        std::cout << "Before Thread\n";
        for (int i = 0; i < num_threads; i++) {
            pthread_create(&thread_obj[i], NULL, thread_func_unroll_scan_no_add, (void*) &t_info[i]); 
        }
        for (int i = 0; i < num_threads; i++) {
            pthread_join(thread_obj[i], NULL); 
        }
        std::cout << "After Thread\n"; 

        duration = std::chrono::duration_cast<milli>(
             std::chrono::high_resolution_clock::now() - tstart).count() / 1000.0;
        std::cout << "unroll scan (no add): size = " << num_vectors_total * CODE_SIZE << 
            " bytes\ttime="  << duration << " seconds\n" 
            << "throughput: " << num_vectors_total * CODE_SIZE / duration / 1e9 << "GB/s";

        // thread_func_unroll_scan
        tstart = std::chrono::high_resolution_clock::now();
        std::cout << "Before Thread\n";
        for (int i = 0; i < num_threads; i++) {
            pthread_create(&thread_obj[i], NULL, thread_func_unroll_scan, (void*) &t_info[i]); 
        }
        for (int i = 0; i < num_threads; i++) {
            pthread_join(thread_obj[i], NULL); 
        }
        std::cout << "After Thread\n"; 

        duration = std::chrono::duration_cast<milli>(
             std::chrono::high_resolution_clock::now() - tstart).count() / 1000.0;
        std::cout << "unroll scan: size = " << num_vectors_total * CODE_SIZE << 
            " bytes\ttime="  << duration << " seconds\n" 
            << "throughput: " << num_vectors_total * CODE_SIZE / duration / 1e9 << "GB/s";

        // thread_func_faiss_scan 
        tstart = std::chrono::high_resolution_clock::now();
        std::cout << "Before Thread\n";
        for (int i = 0; i < num_threads; i++) {
            pthread_create(&thread_obj[i], NULL, thread_func_faiss_scan, (void*) &t_info[i]); 
        }
        for (int i = 0; i < num_threads; i++) {
            pthread_join(thread_obj[i], NULL); 
        }
        std::cout << "After Thread\n"; 

        duration = std::chrono::duration_cast<milli>(
             std::chrono::high_resolution_clock::now() - tstart).count() / 1000.0;
        std::cout << "fasiss scan: size = " << num_vectors_total * CODE_SIZE << 
            " bytes\ttime="  << duration << " seconds\n" 
            << "throughput: " << num_vectors_total * CODE_SIZE / duration / 1e9 << "GB/s";
    }

    return 0;
}