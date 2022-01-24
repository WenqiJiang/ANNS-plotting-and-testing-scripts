// g++ PQ_scan_multi_thread.cpp -o PQ_scan_multi_thread -std=c++14 -pthread
// ./PQ_scan_multi_thread <thread_num>

#include <iostream>
#include <cstdio>
#include <chrono>
#include <stdint.h>
#include <pthread.h> 
#include <string.h>

#include <sys/time.h>
#define CODE_SIZE 16

//#include <boost/multiprecision/cpp_int.hpp>
//using namespace boost::multiprecision;

#define uint8_t uint8_t

using milli = std::chrono::milliseconds;


struct Thread_info {
    long num_vectors;
    uint8_t* codes;
    float* distance_LUT; // 16 x 256
    float* result;
    double time_per_thread;
};


void* thread_func_unroll_scan_read_codes(void* vargp) {
    

    auto tstart = std::chrono::high_resolution_clock::now();

    struct Thread_info* t_info = (struct Thread_info*) vargp;


    long num_vectors = t_info -> num_vectors;
    uint8_t* codes = t_info -> codes;
    float* distance_LUT = t_info -> distance_LUT; // 16 x 256
    float* result = t_info -> result;

    float dis[CODE_SIZE]; 
    float* tab_ptr = distance_LUT;

    uint8_t tmp_codes[16];

    for (long j = 0; j < num_vectors; j++) {
        uint8_t* code_ptr = codes + j * CODE_SIZE;
  
        tmp_codes[0] = code_ptr[0];
        tmp_codes[1] = code_ptr[1];
        tmp_codes[2] = code_ptr[2];
        tmp_codes[3] = code_ptr[3];
        tmp_codes[4] = code_ptr[4];
        tmp_codes[5] = code_ptr[5];
        tmp_codes[6] = code_ptr[6];
        tmp_codes[7] = code_ptr[7];
        tmp_codes[8] = code_ptr[8];
        tmp_codes[9] = code_ptr[9];
        tmp_codes[10] = code_ptr[10];
        tmp_codes[11] = code_ptr[11];
        tmp_codes[12] = code_ptr[12];
        tmp_codes[13] = code_ptr[13];
        tmp_codes[14] = code_ptr[14];
        tmp_codes[15] = code_ptr[15];
    }
    float sum_dis = 
        tmp_codes[0] + tmp_codes[1] + tmp_codes[2] + tmp_codes[3] +
        tmp_codes[4] + tmp_codes[5] + tmp_codes[6] + tmp_codes[7] +
        tmp_codes[8] + tmp_codes[9] + tmp_codes[10] + tmp_codes[11] +
        tmp_codes[12] + tmp_codes[13] + tmp_codes[14] + tmp_codes[15];

    for (long j = 0; j < num_vectors; j++) {
        result[j] = sum_dis;
    }


    t_info -> time_per_thread = std::chrono::duration_cast<milli>(
             std::chrono::high_resolution_clock::now() - tstart).count() / 1000.0;
}



void* thread_func_unroll_scan_read_longer_codes(void* vargp) {

#define LONG_CODE_SIZE 1024

    auto tstart = std::chrono::high_resolution_clock::now();

    struct Thread_info* t_info = (struct Thread_info*) vargp;


    long num_vectors = t_info -> num_vectors;
    uint8_t* codes = t_info -> codes;
    float* distance_LUT = t_info -> distance_LUT; // 16 x 256
    float* result = t_info -> result;

    uint8_t tmp_codes[LONG_CODE_SIZE];
    uint8_t codes_burst[LONG_CODE_SIZE];

    for (long j = 0; j < num_vectors / (LONG_CODE_SIZE / CODE_SIZE); j++) {
        uint8_t* code_ptr = codes + j * LONG_CODE_SIZE;
        memcpy(codes_burst, code_ptr, LONG_CODE_SIZE); // this buffer: 1 + (N - 1) times
  
        for (int k = 0; k < LONG_CODE_SIZE; k++) {
            tmp_codes[k] = codes_burst[k];
        }
    }
    float sum_dis = 
        tmp_codes[0] + tmp_codes[1] + tmp_codes[2] + tmp_codes[3] +
        tmp_codes[4] + tmp_codes[5] + tmp_codes[6] + tmp_codes[7] +
        tmp_codes[8] + tmp_codes[9] + tmp_codes[10] + tmp_codes[11] +
        tmp_codes[12] + tmp_codes[13] + tmp_codes[14] + tmp_codes[15];

    result[0] = sum_dis;
    // for (long j = 0; j < num_vectors; j++) {
    //     result[j] = sum_dis;
    // }

    t_info -> time_per_thread = std::chrono::duration_cast<milli>(
             std::chrono::high_resolution_clock::now() - tstart).count() / 1000.0;
}

void* thread_func_unroll_scan_read_codes_prefetch(void* vargp) {
    

    auto tstart = std::chrono::high_resolution_clock::now();

    struct Thread_info* t_info = (struct Thread_info*) vargp;


    long num_vectors = t_info -> num_vectors;
    uint8_t* codes = t_info -> codes;
    float* distance_LUT = t_info -> distance_LUT; // 16 x 256
    float* result = t_info -> result;

    float dis[CODE_SIZE]; 
    float* tab_ptr = distance_LUT;

    // copy to
    uint8_t tmp_codes[16];

    // double buffering the codes to maximize bandwidth
    // this buffer -> read N times
    // next buffer -> read N - 1 times
    uint8_t codes_this[16];
    uint8_t codes_next[16];

    // first iteration: load this buffer from memory
    memcpy(codes_this, codes, CODE_SIZE);
    codes += CODE_SIZE; 
    // middle iterations: charge next buffer + compute + load this buffer from next buffer 
    for (long j = 1; j < num_vectors - 1; j++) {
        memcpy(codes_next, codes, CODE_SIZE); // next buffer: N - 1 times
        codes += CODE_SIZE;
  
        tmp_codes[0] = codes_this[0];
        tmp_codes[1] = codes_this[1];
        tmp_codes[2] = codes_this[2];
        tmp_codes[3] = codes_this[3];
        tmp_codes[4] = codes_this[4];
        tmp_codes[5] = codes_this[5];
        tmp_codes[6] = codes_this[6];
        tmp_codes[7] = codes_this[7];
        tmp_codes[8] = codes_this[8];
        tmp_codes[9] = codes_this[9];
        tmp_codes[10] = codes_this[10];
        tmp_codes[11] = codes_this[11];
        tmp_codes[12] = codes_this[12];
        tmp_codes[13] = codes_this[13];
        tmp_codes[14] = codes_this[14];
        tmp_codes[15] = codes_this[15];

        memcpy(codes_this, codes_next, CODE_SIZE); // this buffer: 1 + (N - 1) times
    }
    // last iteration: compute
    tmp_codes[0] = codes_this[0];
    tmp_codes[1] = codes_this[1];
    tmp_codes[2] = codes_this[2];
    tmp_codes[3] = codes_this[3];
    tmp_codes[4] = codes_this[4];
    tmp_codes[5] = codes_this[5];
    tmp_codes[6] = codes_this[6];
    tmp_codes[7] = codes_this[7];
    tmp_codes[8] = codes_this[8];
    tmp_codes[9] = codes_this[9];
    tmp_codes[10] = codes_this[10];
    tmp_codes[11] = codes_this[11];
    tmp_codes[12] = codes_this[12];
    tmp_codes[13] = codes_this[13];
    tmp_codes[14] = codes_this[14];
    tmp_codes[15] = codes_this[15];


    float sum_dis = 
        tmp_codes[0] + tmp_codes[1] + tmp_codes[2] + tmp_codes[3] +
        tmp_codes[4] + tmp_codes[5] + tmp_codes[6] + tmp_codes[7] +
        tmp_codes[8] + tmp_codes[9] + tmp_codes[10] + tmp_codes[11] +
        tmp_codes[12] + tmp_codes[13] + tmp_codes[14] + tmp_codes[15];

    for (long j = 0; j < num_vectors; j++) {
        result[j] = sum_dis;
    }


    t_info -> time_per_thread = std::chrono::duration_cast<milli>(
             std::chrono::high_resolution_clock::now() - tstart).count() / 1000.0;
}

void* thread_func_unroll_scan_no_add(void* vargp) {
    
    auto tstart = std::chrono::high_resolution_clock::now();

    struct Thread_info* t_info = (struct Thread_info*) vargp;


    long num_vectors = t_info -> num_vectors;
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

    for (long j = 0; j < num_vectors; j++) {
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

    for (long j = 0; j < num_vectors; j++) {
        result[j] = sum_dis;
    }

    t_info -> time_per_thread = std::chrono::duration_cast<milli>(
             std::chrono::high_resolution_clock::now() - tstart).count() / 1000.0;
}

void* thread_func_unroll_scan(void* vargp) {
    
    auto tstart = std::chrono::high_resolution_clock::now();

    struct Thread_info* t_info = (struct Thread_info*) vargp;


    long num_vectors = t_info -> num_vectors;
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

    for (long j = 0; j < num_vectors; j++) {
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

    t_info -> time_per_thread = std::chrono::duration_cast<milli>(
             std::chrono::high_resolution_clock::now() - tstart).count() / 1000.0;
}


void* thread_func_unroll_scan_prefetch(void* vargp) {
    
    auto tstart = std::chrono::high_resolution_clock::now();

    struct Thread_info* t_info = (struct Thread_info*) vargp;


    long num_vectors = t_info -> num_vectors;
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


    // double buffering the codes to maximize bandwidth
    // this buffer -> read N times
    // next buffer -> read N - 1 times
    uint8_t codes_this[16];
    uint8_t codes_next[16];

    // first iteration: load this buffer from memory
    memcpy(codes_this, codes, CODE_SIZE);
    codes += CODE_SIZE; 
    // middle iterations: charge next buffer + compute + load this buffer from next buffer 
    for (long j = 0; j < num_vectors - 1; j++) {
        memcpy(codes_next, codes, CODE_SIZE); // next buffer: N - 1 times
        codes += CODE_SIZE;
  
        dis[0] = tab_ptr_0[codes_this[0]];
        dis[1] = tab_ptr_1[codes_this[1]];
        dis[2] = tab_ptr_2[codes_this[2]];
        dis[3] = tab_ptr_3[codes_this[3]];
        dis[4] = tab_ptr_4[codes_this[4]];
        dis[5] = tab_ptr_5[codes_this[5]];
        dis[6] = tab_ptr_6[codes_this[6]];
        dis[7] = tab_ptr_7[codes_this[7]];
        dis[8] = tab_ptr_8[codes_this[8]];
        dis[9] = tab_ptr_9[codes_this[9]];
        dis[10] = tab_ptr_10[codes_this[10]];
        dis[11] = tab_ptr_11[codes_this[11]];
        dis[12] = tab_ptr_12[codes_this[12]];
        dis[13] = tab_ptr_13[codes_this[13]];
        dis[14] = tab_ptr_14[codes_this[14]];
        dis[15] = tab_ptr_15[codes_this[15]];

        memcpy(codes_this, codes_next, CODE_SIZE); // this buffer: 1 + (N - 1) times

        float sum_dis = 
            dis[0] + dis[1] + dis[2] + dis[3] +
            dis[4] + dis[5] + dis[6] + dis[7] +
            dis[8] + dis[9] + dis[10] + dis[11] +
            dis[12] + dis[13] + dis[14] + dis[15];

        result[j] = sum_dis;
    }
    // last iteration: compute 
    dis[0] = tab_ptr_0[codes_this[0]];
    dis[1] = tab_ptr_1[codes_this[1]];
    dis[2] = tab_ptr_2[codes_this[2]];
    dis[3] = tab_ptr_3[codes_this[3]];
    dis[4] = tab_ptr_4[codes_this[4]];
    dis[5] = tab_ptr_5[codes_this[5]];
    dis[6] = tab_ptr_6[codes_this[6]];
    dis[7] = tab_ptr_7[codes_this[7]];
    dis[8] = tab_ptr_8[codes_this[8]];
    dis[9] = tab_ptr_9[codes_this[9]];
    dis[10] = tab_ptr_10[codes_this[10]];
    dis[11] = tab_ptr_11[codes_this[11]];
    dis[12] = tab_ptr_12[codes_this[12]];
    dis[13] = tab_ptr_13[codes_this[13]];
    dis[14] = tab_ptr_14[codes_this[14]];
    dis[15] = tab_ptr_15[codes_this[15]];

    float sum_dis = 
        dis[0] + dis[1] + dis[2] + dis[3] +
        dis[4] + dis[5] + dis[6] + dis[7] +
        dis[8] + dis[9] + dis[10] + dis[11] +
        dis[12] + dis[13] + dis[14] + dis[15];

    result[num_vectors - 1] = sum_dis;

    t_info -> time_per_thread = std::chrono::duration_cast<milli>(
             std::chrono::high_resolution_clock::now() - tstart).count() / 1000.0;
}


void* thread_func_unroll_scan_shift_prefetch(void* vargp) {
    
    auto tstart = std::chrono::high_resolution_clock::now();

    struct Thread_info* t_info = (struct Thread_info*) vargp;


    long num_vectors = t_info -> num_vectors;
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


    // double buffering the codes to maximize bandwidth
    // this buffer -> read N times
    // next buffer -> read N - 1 times
    // using uint64_t & bit mask to speedup
    uint64_t codes_this[2];
    uint64_t codes_next[2];

    // first iteration: load this buffer from memory
    memcpy(codes_this, codes, CODE_SIZE);
    codes += CODE_SIZE; 
    // middle iterations: charge next buffer + compute + load this buffer from next buffer 
    for (long j = 0; j < num_vectors - 1; j++) {
        memcpy(codes_next, codes, CODE_SIZE); // next buffer: N - 1 times
        codes += CODE_SIZE;
  
        uint64_t code_0 = (codes_this[0] & 0x0000000F) >> (0 * 8);
        uint64_t code_1 = (codes_this[0] & 0x000000F0) >> (1 * 8);
        uint64_t code_2 = (codes_this[0] & 0x00000F00) >> (2 * 8);
        uint64_t code_3 = (codes_this[0] & 0x0000F000) >> (3 * 8);
        uint64_t code_4 = (codes_this[0] & 0x000F0000) >> (4 * 8);
        uint64_t code_5 = (codes_this[0] & 0x00F00000) >> (5 * 8);
        uint64_t code_6 = (codes_this[0] & 0x0F000000) >> (6 * 8);
        uint64_t code_7 = (codes_this[0] & 0xF0000000) >> (7 * 8);

        uint64_t code_8 = (codes_this[1] & 0x0000000F) >> (0 * 8);
        uint64_t code_9 = (codes_this[1] & 0x000000F0) >> (1 * 8);
        uint64_t code_10 = (codes_this[1] & 0x00000F00) >> (2 * 8);
        uint64_t code_11 = (codes_this[1] & 0x0000F000) >> (3 * 8);
        uint64_t code_12 = (codes_this[1] & 0x000F0000) >> (4 * 8);
        uint64_t code_13 = (codes_this[1] & 0x00F00000) >> (5 * 8);
        uint64_t code_14 = (codes_this[1] & 0x0F000000) >> (6 * 8);
        uint64_t code_15 = (codes_this[1] & 0xF0000000) >> (7 * 8);

        dis[0] = tab_ptr_0[code_0];
        dis[1] = tab_ptr_1[code_1];
        dis[2] = tab_ptr_2[code_2];
        dis[3] = tab_ptr_3[code_3];
        dis[4] = tab_ptr_4[code_4];
        dis[5] = tab_ptr_5[code_5];
        dis[6] = tab_ptr_6[code_6];
        dis[7] = tab_ptr_7[code_7];
        dis[8] = tab_ptr_8[code_8];
        dis[9] = tab_ptr_9[code_9];
        dis[10] = tab_ptr_10[code_10];
        dis[11] = tab_ptr_11[code_11];
        dis[12] = tab_ptr_12[code_12];
        dis[13] = tab_ptr_13[code_13];
        dis[14] = tab_ptr_14[code_14];
        dis[15] = tab_ptr_15[code_15];

        memcpy(codes_this, codes_next, CODE_SIZE); // this buffer: 1 + (N - 1) times

        float sum_dis = 
            dis[0] + dis[1] + dis[2] + dis[3] +
            dis[4] + dis[5] + dis[6] + dis[7] +
            dis[8] + dis[9] + dis[10] + dis[11] +
            dis[12] + dis[13] + dis[14] + dis[15];

        result[j] = sum_dis;
    }
    // last iteration: compute 
    uint64_t code_0 = (codes_this[0] & 0x0000000F) >> (0 * 8);
    uint64_t code_1 = (codes_this[0] & 0x000000F0) >> (1 * 8);
    uint64_t code_2 = (codes_this[0] & 0x00000F00) >> (2 * 8);
    uint64_t code_3 = (codes_this[0] & 0x0000F000) >> (3 * 8);
    uint64_t code_4 = (codes_this[0] & 0x000F0000) >> (4 * 8);
    uint64_t code_5 = (codes_this[0] & 0x00F00000) >> (5 * 8);
    uint64_t code_6 = (codes_this[0] & 0x0F000000) >> (6 * 8);
    uint64_t code_7 = (codes_this[0] & 0xF0000000) >> (7 * 8);

    uint64_t code_8 = (codes_this[1] & 0x0000000F) >> (0 * 8);
    uint64_t code_9 = (codes_this[1] & 0x000000F0) >> (1 * 8);
    uint64_t code_10 = (codes_this[1] & 0x00000F00) >> (2 * 8);
    uint64_t code_11 = (codes_this[1] & 0x0000F000) >> (3 * 8);
    uint64_t code_12 = (codes_this[1] & 0x000F0000) >> (4 * 8);
    uint64_t code_13 = (codes_this[1] & 0x00F00000) >> (5 * 8);
    uint64_t code_14 = (codes_this[1] & 0x0F000000) >> (6 * 8);
    uint64_t code_15 = (codes_this[1] & 0xF0000000) >> (7 * 8);

    dis[0] = tab_ptr_0[code_0];
    dis[1] = tab_ptr_1[code_1];
    dis[2] = tab_ptr_2[code_2];
    dis[3] = tab_ptr_3[code_3];
    dis[4] = tab_ptr_4[code_4];
    dis[5] = tab_ptr_5[code_5];
    dis[6] = tab_ptr_6[code_6];
    dis[7] = tab_ptr_7[code_7];
    dis[8] = tab_ptr_8[code_8];
    dis[9] = tab_ptr_9[code_9];
    dis[10] = tab_ptr_10[code_10];
    dis[11] = tab_ptr_11[code_11];
    dis[12] = tab_ptr_12[code_12];
    dis[13] = tab_ptr_13[code_13];
    dis[14] = tab_ptr_14[code_14];
    dis[15] = tab_ptr_15[code_15];

    float sum_dis = 
        dis[0] + dis[1] + dis[2] + dis[3] +
        dis[4] + dis[5] + dis[6] + dis[7] +
        dis[8] + dis[9] + dis[10] + dis[11] +
        dis[12] + dis[13] + dis[14] + dis[15];

    result[num_vectors - 1] = sum_dis;

    t_info -> time_per_thread = std::chrono::duration_cast<milli>(
             std::chrono::high_resolution_clock::now() - tstart).count() / 1000.0;
}

void* thread_func_faiss_scan(void* vargp) {

    auto tstart = std::chrono::high_resolution_clock::now();

    struct Thread_info* t_info = (struct Thread_info*) vargp;


    long num_vectors = t_info -> num_vectors;
    uint8_t* codes = t_info -> codes;
    float* distance_LUT = t_info -> distance_LUT; // 16 x 256
    float* result = t_info -> result;

    for (long j = 0; j < num_vectors; j++) {
        uint8_t* cur_codes = codes;
        codes += CODE_SIZE;
        float dis = 0; 
        const float* tab_ptr = distance_LUT;

        for (long m = 0; m < CODE_SIZE; m++) {
            dis += tab_ptr[(uint64_t)(*cur_codes++)];
            tab_ptr += 256;
        }

        result[j] = dis;
    }

    t_info -> time_per_thread = std::chrono::duration_cast<milli>(
             std::chrono::high_resolution_clock::now() - tstart).count() / 1000.0;
}


int main(int argc, char *argv[]) {

    if (argc != 2) {
        std::cout << "Usage: ./simple_cp_multi_thread <num_threads>\n";
    }
    int num_threads = std::stoi(argv[1]);

    long num_vectors_total = (long) 1 * 1000 * 1000 * 1000; 
    long num_vectors_per_thread = num_vectors_total / num_threads; 

    // multiple threads manipulate on different pieces of memory
    uint8_t** codes = new uint8_t*[num_threads]; 
    float** distance_LUT = new float*[num_threads];
    float** result = new float*[num_threads];
    double* time_per_thread = new double[num_threads];

    for (int i = 0; i < num_threads; i++) {
        codes[i] = new uint8_t[num_vectors_per_thread * CODE_SIZE]; 
        memset(codes[i], 0, num_vectors_per_thread * CODE_SIZE);
        distance_LUT[i] = new float[256 * CODE_SIZE];
        memset(distance_LUT[i], 0, 256 * CODE_SIZE * sizeof(float));
        result[i] = new float[num_vectors_per_thread];
        memset(result[i], 0, num_vectors_per_thread * sizeof(float));
    }
    memset(time_per_thread, 0, num_threads * sizeof(double));

    pthread_t thread_obj[num_threads]; 
    struct Thread_info t_info[num_threads];

    // multi-thread manipulate on different partitions of the array
    for (int i = 0; i < num_threads; i++) {
        t_info[i].num_vectors = num_vectors_per_thread;
        t_info[i].codes = codes[i];
        t_info[i].distance_LUT = distance_LUT[i];
        t_info[i].result = result[i];
        t_info[i].time_per_thread = time_per_thread[i];
    }

    std::cout << "Scanning " << num_vectors_total << " PQ codes (" << CODE_SIZE << " bytes per vec), " 
        << ((float) num_vectors_total) * CODE_SIZE / 1e9 << " GB in total\n";


    auto tstart = std::chrono::high_resolution_clock::now();
    double duration = 0;
    double total_time_per_thread = 0;
    double ave_time_per_thread = 0;
    for (int iter = 0; iter < 5; iter++) {

        std::cout << "\nIteration " << iter << ": " << std::endl;

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
        total_time_per_thread = 0;
        for (int i = 0; i < num_threads; i++) total_time_per_thread += t_info[i].time_per_thread;
        ave_time_per_thread = total_time_per_thread / num_threads;
        std::cout << "unroll read codes: size = " << num_vectors_total * CODE_SIZE << 
            " bytes\ntime (all sync)="  << duration << " seconds\n" 
            << "throughput: " << num_vectors_total * CODE_SIZE / duration / 1e9 << "GB/s\n"
            << "time (thread average)="  << ave_time_per_thread << " seconds\n" 
            << "throughput: " << num_vectors_total * CODE_SIZE / ave_time_per_thread / 1e9 << "GB/s\n";

        // thread_func_unroll_scan_read_longer_codes
        tstart = std::chrono::high_resolution_clock::now();
        std::cout << "Before Thread\n";
        for (int i = 0; i < num_threads; i++) {
            pthread_create(&thread_obj[i], NULL, thread_func_unroll_scan_read_longer_codes, (void*) &t_info[i]); 
        }
        for (int i = 0; i < num_threads; i++) {
            pthread_join(thread_obj[i], NULL); 
        }
        std::cout << "After Thread\n"; 

        duration = std::chrono::duration_cast<milli>(
             std::chrono::high_resolution_clock::now() - tstart).count() / 1000.0;
        total_time_per_thread = 0;
        for (int i = 0; i < num_threads; i++) total_time_per_thread += t_info[i].time_per_thread;
        ave_time_per_thread = total_time_per_thread / num_threads;
        std::cout << "unroll read longer codes: size = " << num_vectors_total * CODE_SIZE << 
            "longer code size = " << LONG_CODE_SIZE << " bytes (instead of 16)" <<
            " bytes\ntime (all sync)="  << duration << " seconds\n" 
            << "throughput: " << num_vectors_total * CODE_SIZE / duration / 1e9 << "GB/s\n"
            << "time (thread average)="  << ave_time_per_thread << " seconds\n" 
            << "throughput: " << num_vectors_total * CODE_SIZE / ave_time_per_thread / 1e9 << "GB/s\n";


        // thread_func_unroll_scan_read_codes_prefetch
        tstart = std::chrono::high_resolution_clock::now();
        std::cout << "Before Thread\n";
        for (int i = 0; i < num_threads; i++) {
            pthread_create(&thread_obj[i], NULL, thread_func_unroll_scan_read_codes_prefetch, (void*) &t_info[i]); 
        }
        for (int i = 0; i < num_threads; i++) {
            pthread_join(thread_obj[i], NULL); 
        }
        std::cout << "After Thread\n"; 

        duration = std::chrono::duration_cast<milli>(
             std::chrono::high_resolution_clock::now() - tstart).count() / 1000.0;
        total_time_per_thread = 0;
        for (int i = 0; i < num_threads; i++) total_time_per_thread += t_info[i].time_per_thread;
        ave_time_per_thread = total_time_per_thread / num_threads;
        std::cout << "unroll read codes (prefetch): size = " << num_vectors_total * CODE_SIZE << 
            " bytes\ntime (all sync)="  << duration << " seconds\n" 
            << "throughput: " << num_vectors_total * CODE_SIZE / duration / 1e9 << "GB/s\n"
            << "time (thread average)="  << ave_time_per_thread << " seconds\n" 
            << "throughput: " << num_vectors_total * CODE_SIZE / ave_time_per_thread / 1e9 << "GB/s\n";

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
        total_time_per_thread = 0;
        for (int i = 0; i < num_threads; i++) total_time_per_thread += t_info[i].time_per_thread;
        ave_time_per_thread = total_time_per_thread / num_threads;
        std::cout << "unroll scan (no add): size = " << num_vectors_total * CODE_SIZE << 
            " bytes\ntime (all sync)="  << duration << " seconds\n" 
            << "throughput: " << num_vectors_total * CODE_SIZE / duration / 1e9 << "GB/s\n"
            << "time (thread average)="  << ave_time_per_thread << " seconds\n" 
            << "throughput: " << num_vectors_total * CODE_SIZE / ave_time_per_thread / 1e9 << "GB/s\n";


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
        total_time_per_thread = 0;
        for (int i = 0; i < num_threads; i++) total_time_per_thread += t_info[i].time_per_thread;
        ave_time_per_thread = total_time_per_thread / num_threads;
        std::cout << "unroll scan: size = " << num_vectors_total * CODE_SIZE << 
            " bytes\ntime (all sync)="  << duration << " seconds\n" 
            << "throughput: " << num_vectors_total * CODE_SIZE / duration / 1e9 << "GB/s\n"
            << "time (thread average)="  << ave_time_per_thread << " seconds\n" 
            << "throughput: " << num_vectors_total * CODE_SIZE / ave_time_per_thread / 1e9 << "GB/s\n";


        // thread_func_unroll_scan_prefetch
        tstart = std::chrono::high_resolution_clock::now();
        std::cout << "Before Thread\n";
        for (int i = 0; i < num_threads; i++) {
            pthread_create(&thread_obj[i], NULL, thread_func_unroll_scan_prefetch, (void*) &t_info[i]); 
        }
        for (int i = 0; i < num_threads; i++) {
            pthread_join(thread_obj[i], NULL); 
        }
        std::cout << "After Thread\n"; 

        duration = std::chrono::duration_cast<milli>(
             std::chrono::high_resolution_clock::now() - tstart).count() / 1000.0;
        total_time_per_thread = 0;
        for (int i = 0; i < num_threads; i++) total_time_per_thread += t_info[i].time_per_thread;
        ave_time_per_thread = total_time_per_thread / num_threads;
        std::cout << "unroll scan (prefetch): size = " << num_vectors_total * CODE_SIZE << 
            " bytes\ntime (all sync)="  << duration << " seconds\n" 
            << "throughput: " << num_vectors_total * CODE_SIZE / duration / 1e9 << "GB/s\n"
            << "time (thread average)="  << ave_time_per_thread << " seconds\n" 
            << "throughput: " << num_vectors_total * CODE_SIZE / ave_time_per_thread / 1e9 << "GB/s\n";


        // thread_func_unroll_scan_shift_prefetch
        tstart = std::chrono::high_resolution_clock::now();
        std::cout << "Before Thread\n";
        for (int i = 0; i < num_threads; i++) {
            pthread_create(&thread_obj[i], NULL, thread_func_unroll_scan_shift_prefetch, (void*) &t_info[i]); 
        }
        for (int i = 0; i < num_threads; i++) {
            pthread_join(thread_obj[i], NULL); 
        }
        std::cout << "After Thread\n"; 

        duration = std::chrono::duration_cast<milli>(
             std::chrono::high_resolution_clock::now() - tstart).count() / 1000.0;
        total_time_per_thread = 0;
        for (int i = 0; i < num_threads; i++) total_time_per_thread += t_info[i].time_per_thread;
        ave_time_per_thread = total_time_per_thread / num_threads;
        std::cout << "unroll scan (shift + prefetch): size = " << num_vectors_total * CODE_SIZE << 
            " bytes\ntime (all sync)="  << duration << " seconds\n" 
            << "throughput: " << num_vectors_total * CODE_SIZE / duration / 1e9 << "GB/s\n"
            << "time (thread average)="  << ave_time_per_thread << " seconds\n" 
            << "throughput: " << num_vectors_total * CODE_SIZE / ave_time_per_thread / 1e9 << "GB/s\n";


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
        total_time_per_thread = 0;
        for (int i = 0; i < num_threads; i++) total_time_per_thread += t_info[i].time_per_thread;
        ave_time_per_thread = total_time_per_thread / num_threads;
        std::cout << "fasiss scan: size = " << num_vectors_total * CODE_SIZE << 
            " bytes\ntime (all sync)="  << duration << " seconds\n" 
            << "throughput: " << num_vectors_total * CODE_SIZE / duration / 1e9 << "GB/s\n"
            << "time (thread average)="  << ave_time_per_thread << " seconds\n" 
            << "throughput: " << num_vectors_total * CODE_SIZE / ave_time_per_thread / 1e9 << "GB/s\n";

    }

    return 0;
}
