// g++ simple_cp_multi_thread.cpp -o simple_cp_multi_thread -std=c++14 -pthread

#include <iostream>
#include <cstdio>
#include <chrono>
#include <stdint.h>
#include <pthread.h> 

#include <sys/time.h>
#define CODE_SIZE 16

//#include <boost/multiprecision/cpp_int.hpp>
//using namespace boost::multiprecision;

//#define DTYPE uint8_t
//#define DTYPE uint16_t
//#define DTYPE uint32_t
#define DTYPE uint64_t

using milli = std::chrono::milliseconds;


struct Thread_info {
    size_t num_vectors;
    DTYPE* codes_cp_from;
    DTYPE* codes_cp_to;
};


void* thread_func_cp(void* vargp) {

    struct Thread_info* t_info_cp = (struct Thread_info*) vargp;

    size_t num_vectors = t_info_cp -> num_vectors;
    DTYPE* codes_cp_from = t_info_cp -> codes_cp_from;
    DTYPE* codes_cp_to = t_info_cp -> codes_cp_to;

    for (int j = 0; j < num_vectors * CODE_SIZE; j++) {
        codes_cp_to[j] = codes_cp_from[j];
    }
}

void* thread_func_read(void* vargp) {
    
    struct Thread_info* t_info_read = (struct Thread_info*) vargp;

    size_t num_vectors = t_info_read -> num_vectors;
    DTYPE* codes_cp_from = t_info_read -> codes_cp_from;

    DTYPE tmp_0;
    DTYPE tmp_1;
    DTYPE tmp_2;
    DTYPE tmp_3;
    DTYPE tmp_4;
    DTYPE tmp_5;
    DTYPE tmp_6;
    DTYPE tmp_7;
    for (int j = 0; j < num_vectors * CODE_SIZE / 8; j++) {
        tmp_0 = codes_cp_from[j * 8];
        tmp_1 = codes_cp_from[j * 8 + 1];
        tmp_2 = codes_cp_from[j * 8 + 2];
        tmp_3 = codes_cp_from[j * 8 + 3];
        tmp_3 = codes_cp_from[j * 8 + 4];
        tmp_3 = codes_cp_from[j * 8 + 5];
        tmp_3 = codes_cp_from[j * 8 + 6];
        tmp_3 = codes_cp_from[j * 8 + 7];
    }
}

int main(int argc, char *argv[]) {

    if (argc != 2) {
        std::cout << "Usage: ./simple_cp_multi_thread <num_threads>\n";
    }
    int num_threads = std::stoi(argv[1]);

    size_t num_vectors = 1000 * 1000 * 1000; 
    DTYPE* codes_cp_from = new DTYPE[num_vectors * CODE_SIZE]; 
    DTYPE* codes_cp_to = new DTYPE[num_vectors * CODE_SIZE]; 

    pthread_t thread_cp[num_threads]; 
    pthread_t thread_read[num_threads]; 
    struct Thread_info t_info_cp[num_threads];
    struct Thread_info t_info_read[num_threads];

    // multi-thread manipulate on different partitions of the array
    for (int i = 0; i < num_threads; i++) {
        t_info_cp[i].num_vectors = num_vectors / num_threads;
        t_info_cp[i].codes_cp_from = codes_cp_from + num_vectors * CODE_SIZE / num_threads * i;
        t_info_cp[i].codes_cp_to = codes_cp_to  + num_vectors * CODE_SIZE / num_threads * i;
    }
    for (int i = 0; i < num_threads; i++) {
        t_info_read[i].num_vectors = num_vectors / num_threads;
        t_info_read[i].codes_cp_from = codes_cp_from + num_vectors * CODE_SIZE / num_threads * i;
    }

    std::cout << "Scanning " << num_vectors << " PQ codes (16 bytes per vec)\n";
    for (int iter = 0; iter < 10; iter++) {

        std::cout << "Iteration " << iter << ": " << std::endl;
        auto t0 = std::chrono::high_resolution_clock::now();

        printf("Before Thread\n");
        for (int i = 0; i < num_threads; i++) {
            pthread_create(&thread_cp[i], NULL, thread_func_cp, (void*) &t_info_cp[i]); 
        }
        for (int i = 0; i < num_threads; i++) {
            pthread_join(thread_cp[i], NULL); 
        }
        printf("After Thread\n"); 

        double duration0 = std::chrono::duration_cast<milli>(
             std::chrono::high_resolution_clock::now() - t0).count() / 1000.0;

        std::cout << "CP per byte function: " << duration0 << " seconds\n";

        std::cout << "Iteration " << iter << ": " << std::endl;
        auto t1 = std::chrono::high_resolution_clock::now();

        printf("Before Thread\n");
        for (int i = 0; i < num_threads; i++) {
            pthread_create(&thread_read[i], NULL, thread_func_read, (void*) &t_info_read[i]); 
        }
        for (int i = 0; i < num_threads; i++) {
            pthread_join(thread_read[i], NULL); 
        }
        printf("After Thread\n"); 

        double duration1 = std::chrono::duration_cast<milli>(
             std::chrono::high_resolution_clock::now() - t1).count() / 1000.0;

        std::cout << "read per byte function: " << duration1 << " seconds\n";
    }

    return 0;
}
