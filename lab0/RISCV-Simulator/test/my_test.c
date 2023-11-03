// +FHDR----------------------------------------------------------------------------
//                 Copyright (c) 2023 
//                 ALL RIGHTS aric's RISC-V
// ---------------------------------------------------------------------------------
// Filename      : test/my_test.c
// Author        : aric
// Created On    : 2023-10-13 10:43
// Last Modified : 2023-10-13 11:10
// ---------------------------------------------------------------------------------
// Description   : 
//
//
// -FHDR----------------------------------------------------------------------------
#include "lib.h"

int main()
{
	// ************************************* //
	// *************test fcvt*************** //
	// ************************************* //
	// float a = 1.0;
	// print_f(a);
	// print_c('\n');
	// int b = a;
	// print_d(b);
	// print_c('\n');
	// int c = 2;
	// print_d(c);
	// print_c('\n');
	// float d = c;
	// print_f(d);
	// print_c('\n');
	// ************************************* //
	// *************test fcvt*************** //
	// ************************************* //


    float out;
    float intout;
    int in=0x3F800000;
    float a = 2.0f;
    float b = 3.0f;
    float c = 4.0f;
    // asm volatile (
    //     "fmadd.s %0, %1, %2, %3\n"  // out = a * b + c
    //     : "=f" (out)               
    //     : "f" (a), "f" (b), "f" (c) 
    // );
    // print_f(out);
    // print_c('\n');
    // asm volatile (
    //     "fmsub.s %0, %1, %2, %3\n"  // out = a * b - c
    //     : "=f" (out)                
    //     : "f" (a), "f" (b), "f" (c) 
    // );
    // print_f(out);
    // print_c('\n');
    asm volatile (
        "fsqrt.s %0, %1\n"  // out = a^0.5
        : "=f" (out)                
        : "f" (c) 
    );
    print_f(out);
    print_c('\n');
    // asm volatile (
    //     "fmv.x.w %0, %1\n"  
    //     : "=r" (intout)                
    //     : "f" (a) 
    // );
    // print_d(intout);
    // print_c('\n');
    // asm volatile (
    //     "fmv.w.x %0, %1\n"  
    //     : "=f" (out)       
    //     : "r" (in)         
    // );
    // print_f(out);
    // print_c('\n');
    return 0;
}

// gccrv64if test/my_test.c test/lib.c -o riscv-elf/my_test.riscv                                               
// objdumprv -d riscv-elf/my_test.riscv > riscv-elf/my_test.s
