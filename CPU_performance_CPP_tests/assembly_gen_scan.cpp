// g++ assembly_gen_scan.cpp -o assembly_gen_scan -std=c++14
// g++ -S assembly_gen_scan.cpp -o assembly_gen_scan.s -std=c++14

#include <stdint.h>

#define CODE_SIZE 16

void scan_list_with_table(
    long ncode,
    uint8_t* codes,
    float* distance_LUT, // 16 x 256
    float* res) {
  
    for (long j = 0; j < ncode; j++) {
        uint8_t* cur_codes = codes;
        codes += 8;
        float dis = 0; 
        const float* tab_ptr = distance_LUT;

        for (long m = 0; m < CODE_SIZE; m++) {
            dis += tab_ptr[(uint64_t)(*cur_codes++)];
            tab_ptr += 256;
        }

        res[j] = dis;
    }
}

void scan_list_with_table_unrolled(
        long ncode,
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

    for (long j = 0; j < ncode; j++) {
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
    
        float sum_dis = 
            dis[0] + dis[1] + dis[2] + dis[3] +
            dis[4] + dis[5] + dis[6] + dis[7] +
            dis[8] + dis[9] + dis[10] + dis[11] +
            dis[12] + dis[13] + dis[14] + dis[15];

        res[j] = sum_dis;
    }
}


int main() {
  
    long num_vectors = 100 * 1000 * 1000; 
    uint8_t* codes = new uint8_t[num_vectors * CODE_SIZE]; 
    float* distance_LUT = new float[256 * CODE_SIZE];
    float* result_0 = new float[num_vectors];
    float* result_1 = new float[num_vectors];

    scan_list_with_table(
        num_vectors,
        codes,
        distance_LUT, 
        result_0);
    scan_list_with_table_unrolled(
        num_vectors,
        codes,
        distance_LUT, 
        result_1);

    return 0;
}
