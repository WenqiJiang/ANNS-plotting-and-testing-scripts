// g++ PQ_scan_multi_thread.cpp -o PQ_scan_multi_thread -std=c++14 -pthread

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

int main(int argc, char *argv[]) {

    if (argc != 2) {
        std::cout << "Usage: ./simple_cp_multi_thread <num_threads>\n";
    }
    int num_threads = std::stoi(argv[1]);

    size_t num_vectors_total = 1000 * 1000 * 1000; 
    size_t num_vectors_per_thread = num_vectors_total / num_threads; 

    uint8_t** codes = new uint8_t*[num_threads]; 
    float** distance_LUT = new float*[num_threads];
    float** result = new float*[num_threads];
    for (int i = 0; i < num_threads; i++) {
        codes[i] = new uint8_t[num_vectors_per_thread * CODE_SIZE]; 
        distance_LUT[i] = new float[256 * CODE_SIZE];
        result[i] = new float[num_vectors_per_thread];
    }

    pthread_t thread_faiss_scan[num_threads]; 
    pthread_t thread_unroll_scan[num_threads]; 
    struct Thread_info t_info_faiss_scan[num_threads];
    struct Thread_info t_info_unroll_scan[num_threads];

    // multi-thread manipulate on different partitions of the array
    for (int i = 0; i < num_threads; i++) {
        t_info_faiss_scan[i].num_vectors = num_vectors_per_thread;
        t_info_faiss_scan[i].codes = codes[i];
        t_info_faiss_scan[i].distance_LUT = distance_LUT[i];
        t_info_faiss_scan[i].result = result[i];
    }
    for (int i = 0; i < num_threads; i++) {
        t_info_unroll_scan[i].num_vectors = num_vectors_per_thread;
        t_info_unroll_scan[i].codes = codes[i];
        t_info_unroll_scan[i].distance_LUT = distance_LUT[i];
        t_info_unroll_scan[i].result = result[i];
    }

    std::cout << "Scanning " << num_vectors_total << " PQ codes (16 bytes per vec)\n";
    for (int iter = 0; iter < 10; iter++) {

        std::cout << "Iteration " << iter << ": " << std::endl;
        auto t0 = std::chrono::high_resolution_clock::now();

        printf("Before Thread\n");
        for (int i = 0; i < num_threads; i++) {
            pthread_create(&thread_faiss_scan[i], NULL, thread_func_faiss_scan, (void*) &t_info_faiss_scan[i]); 
        }
        for (int i = 0; i < num_threads; i++) {
            pthread_join(thread_faiss_scan[i], NULL); 
        }
        printf("After Thread\n"); 

        double duration0 = std::chrono::duration_cast<milli>(
             std::chrono::high_resolution_clock::now() - t0).count() / 1000.0;

        std::cout << "fasiss scan: size = " << num_vectors_total * CODE_SIZE << " bytes\ttime="  << duration0 << " seconds\n";

        std::cout << "Iteration " << iter << ": " << std::endl;
        auto t1 = std::chrono::high_resolution_clock::now();

        printf("Before Thread\n");
        for (int i = 0; i < num_threads; i++) {
            pthread_create(&thread_unroll_scan[i], NULL, thread_func_unroll_scan, (void*) &t_info_unroll_scan[i]); 
        }
        for (int i = 0; i < num_threads; i++) {
            pthread_join(thread_unroll_scan[i], NULL); 
        }
        printf("After Thread\n"); 

        double duration1 = std::chrono::duration_cast<milli>(
             std::chrono::high_resolution_clock::now() - t1).count() / 1000.0;

        std::cout << "unroll scan: size = " << num_vectors_total * CODE_SIZE << " bytes\ttime="  << duration1 << " seconds\n";
    }

    return 0;
}
