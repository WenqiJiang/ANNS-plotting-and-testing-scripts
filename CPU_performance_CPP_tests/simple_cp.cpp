// g++ simple_cp.cpp -o simple_cp  -std=c++14 

#include <iostream>
#include <cstdio>
#include <chrono>
#include <stdint.h>

#include <sys/time.h>
#define CODE_SIZE 16

using milli = std::chrono::milliseconds;


int main() {
  
    size_t num_vectors = 100 * 1000 * 1000; 
    uint8_t* codes_cp_from = new uint8_t[num_vectors * CODE_SIZE]; 
    uint8_t* codes_cp_to = new uint8_t[num_vectors * CODE_SIZE]; 

    std::cout << "Scanning " << num_vectors << " PQ codes (16 bytes per vec)\n";
    for (int i = 0; i < 10; i++) {

        std::cout << "Iteration " << i << ": " << std::endl;
        auto t0 = std::chrono::high_resolution_clock::now();
        for (int j = 0; j < num_vectors * CODE_SIZE; j++) {
            codes_cp_to[j] = codes_cp_from[j];
        }

        double duration0 = std::chrono::duration_cast<milli>(
             std::chrono::high_resolution_clock::now() - t0).count() / 1000.0;

        std::cout << "CP per byte function: " << duration0 << " seconds\n";

	uint8_t tmp;
        std::cout << "Iteration " << i << ": " << std::endl;
        auto t1 = std::chrono::high_resolution_clock::now();
        for (int j = 0; j < num_vectors * CODE_SIZE; j++) {
            tmp = codes_cp_from[j];
        }

        double duration1 = std::chrono::duration_cast<milli>(
             std::chrono::high_resolution_clock::now() - t1).count() / 1000.0;

        std::cout << "read per byte function: " << duration1 << " seconds\n";
    }

    return 0;
}
