// g++ CPU_scan_test.cpp -o CPU_scan_test -std=c++14

#include <iostream>
#include <cstdio>
#include <chrono>
#include <stdint.h>

#include <sys/time.h>
#define CODE_SIZE 16

using milli = std::chrono::milliseconds;

void scan_list_with_table(
    size_t ncode,
    uint8_t* codes,
    float* distance_LUT, // 16 x 256
    float* res) {
  
    for (size_t j = 0; j < ncode; j++) {
        uint8_t* cur_codes = codes;
        codes += 8;
        float dis = 0; 
        const float* tab_ptr = distance_LUT;

        for (size_t m = 0; m < CODE_SIZE; m++) {
            dis += tab_ptr[(uint64_t)(*cur_codes++)];
            tab_ptr += 256;
        }

        res[j] = dis;
    }
}

void scan_list_with_table_unrolled(
        size_t ncode,
        uint8_t* codes,
        float* distance_LUT, // 16 x 256
        float* res) {
  
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

    for (size_t j = 0; j < ncode; j++) {
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

        res[j] = sum_dis;
    }
}

void scan_list_with_table_unrolled_no_add(
        size_t ncode,
        uint8_t* codes,
        float* distance_LUT, // 16 x 256
        float* res) {
  
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

    for (size_t j = 0; j < ncode; j++) {
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

    res[ncode - 1] = sum_dis;
}

void scan_list_with_table_unrolled_no_add_small_table(
        size_t ncode,
        uint8_t* codes,
        float* distance_LUT, // 1 x 256
        float* res) {
  
    float dis[CODE_SIZE]; 
    float* tab_ptr = distance_LUT;

    float* tab_ptr_0 = distance_LUT;
    float* tab_ptr_1 = distance_LUT;
    float* tab_ptr_2 = distance_LUT;
    float* tab_ptr_3 = distance_LUT;
    float* tab_ptr_4 = distance_LUT;
    float* tab_ptr_5 = distance_LUT;
    float* tab_ptr_6 = distance_LUT;
    float* tab_ptr_7 = distance_LUT;
    float* tab_ptr_8 = distance_LUT;
    float* tab_ptr_9 = distance_LUT;
    float* tab_ptr_10 = distance_LUT;
    float* tab_ptr_11 = distance_LUT;
    float* tab_ptr_12 = distance_LUT;
    float* tab_ptr_13 = distance_LUT;
    float* tab_ptr_14 = distance_LUT;
    float* tab_ptr_15 = distance_LUT;

    for (size_t j = 0; j < ncode; j++) {
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

    res[ncode - 1] = sum_dis;
}

void scan_list_with_table_unrolled_no_add_small_table_codes_pp(
        size_t ncode,
        uint8_t* codes,
        float* distance_LUT, // 1 x 256
        float* res) {
  
    float dis[CODE_SIZE]; 
    float* tab_ptr = distance_LUT;

    float* tab_ptr_0 = distance_LUT;
    float* tab_ptr_1 = distance_LUT;
    float* tab_ptr_2 = distance_LUT;
    float* tab_ptr_3 = distance_LUT;
    float* tab_ptr_4 = distance_LUT;
    float* tab_ptr_5 = distance_LUT;
    float* tab_ptr_6 = distance_LUT;
    float* tab_ptr_7 = distance_LUT;
    float* tab_ptr_8 = distance_LUT;
    float* tab_ptr_9 = distance_LUT;
    float* tab_ptr_10 = distance_LUT;
    float* tab_ptr_11 = distance_LUT;
    float* tab_ptr_12 = distance_LUT;
    float* tab_ptr_13 = distance_LUT;
    float* tab_ptr_14 = distance_LUT;
    float* tab_ptr_15 = distance_LUT;

    for (size_t j = 0; j < ncode; j++) {
    	uint8_t* code_ptr = codes;
    	codes += CODE_SIZE;
  
        dis[0] = tab_ptr_0[(uint64_t) (*code_ptr++)];
        dis[1] = tab_ptr_1[(uint64_t) (*code_ptr++)];
        dis[2] = tab_ptr_2[(uint64_t) (*code_ptr++)];
        dis[3] = tab_ptr_3[(uint64_t) (*code_ptr++)];
        dis[4] = tab_ptr_4[(uint64_t) (*code_ptr++)];
        dis[5] = tab_ptr_5[(uint64_t) (*code_ptr++)];
        dis[6] = tab_ptr_6[(uint64_t) (*code_ptr++)];
        dis[7] = tab_ptr_7[(uint64_t) (*code_ptr++)];
        dis[8] = tab_ptr_8[(uint64_t) (*code_ptr++)];
        dis[9] = tab_ptr_9[(uint64_t) (*code_ptr++)];
        dis[10] = tab_ptr_10[(uint64_t) (*code_ptr++)];
        dis[11] = tab_ptr_11[(uint64_t) (*code_ptr++)];
        dis[12] = tab_ptr_12[(uint64_t) (*code_ptr++)];
        dis[13] = tab_ptr_13[(uint64_t) (*code_ptr++)];
        dis[14] = tab_ptr_14[(uint64_t) (*code_ptr++)];
        dis[15] = tab_ptr_15[(uint64_t) (*code_ptr++)];
    }
    
    float sum_dis = 
        dis[0] + dis[1] + dis[2] + dis[3] +
        dis[4] + dis[5] + dis[6] + dis[7] +
        dis[8] + dis[9] + dis[10] + dis[11] +
        dis[12] + dis[13] + dis[14] + dis[15];

    res[ncode - 1] = sum_dis;
}

int main() {
  
    size_t num_vectors = 100 * 1000 * 1000; 
    uint8_t* codes = new uint8_t[num_vectors * CODE_SIZE]; 
    float* distance_LUT = new float[256 * CODE_SIZE];
    float* result = new float[num_vectors];

    std::cout << "Scanning " << num_vectors << " PQ codes (16 bytes per vec)\n";
    for (int i = 0; i < 10; i++) {

        std::cout << "Iteration " << i << ": " << std::endl;
        auto t0_faiss = std::chrono::high_resolution_clock::now();
        scan_list_with_table(
            num_vectors,
            codes,
            distance_LUT, 
            result);
        double duration_faiss = std::chrono::duration_cast<milli>(
             std::chrono::high_resolution_clock::now() - t0_faiss).count() / 1000.0;

        std::cout << "Faiss function: " << duration_faiss << " seconds\n";

        std::cout << "Iteration " << i << ": " << std::endl;
        auto t0_unroll = std::chrono::high_resolution_clock::now();
        scan_list_with_table_unrolled(
            num_vectors,
            codes,
            distance_LUT, 
            result);
        double duration_unroll = std::chrono::duration_cast<milli>(
            std::chrono::high_resolution_clock::now() - t0_unroll).count() / 1000.0;

        std::cout << "Unrolled function: " << duration_unroll << " seconds\n";

        std::cout << "Iteration " << i << ": " << std::endl;
        auto t0_unroll_no_add = std::chrono::high_resolution_clock::now();
        scan_list_with_table_unrolled_no_add(
            num_vectors,
            codes,
            distance_LUT, 
            result);
        double duration_unroll_no_add = std::chrono::duration_cast<milli>(
            std::chrono::high_resolution_clock::now() - t0_unroll_no_add).count() / 1000.0;

        std::cout << "Unrolled function (no add): " << duration_unroll_no_add << " seconds\n";

        std::cout << "Iteration " << i << ": " << std::endl;
        auto t0_unroll_no_add_small_table = std::chrono::high_resolution_clock::now();
        scan_list_with_table_unrolled_no_add_small_table(
            num_vectors,
            codes,
            distance_LUT, 
            result);
        double duration_unroll_no_add_small_table = std::chrono::duration_cast<milli>(
            std::chrono::high_resolution_clock::now() - t0_unroll_no_add_small_table).count() / 1000.0;

        std::cout << "Unrolled function (no add small table) " << duration_unroll_no_add_small_table << " seconds\n";

        std::cout << "Iteration " << i << ": " << std::endl;
        auto t0_unroll_no_add_small_table_codes_pp = std::chrono::high_resolution_clock::now();
        scan_list_with_table_unrolled_no_add_small_table_codes_pp(
            num_vectors,
            codes,
            distance_LUT, 
            result);
        double duration_unroll_no_add_small_table_codes_pp = std::chrono::duration_cast<milli>(
            std::chrono::high_resolution_clock::now() - t0_unroll_no_add_small_table_codes_pp).count() / 1000.0;

        std::cout << "Unrolled function (no add small table codes pp) " << duration_unroll_no_add_small_table_codes_pp << " seconds\n";
    }

    return 0;
}
