//
//  main.m
//  666
//
//  Created by Jz D on 2021/5/28.
//

#import <Foundation/Foundation.h>

// 实际占据的首地址          长度 

struct A{
    int a;   // 0   4
    char b;  // 4   1
    short c;  // 6   2
}one;  // 8



struct B{
    char b;   // 0   1
    int c;   // 4    4
    short d;  // 8  2
}two;  //  12


struct C{
    int c;    // 0    4
    double a;  // 8    8
    char b;    // 16   1
    struct A first;   // 20  8
    short d;     // 28   2
}three;     //   32



struct D{
    int c;   //  0   4
    double a;   //   8    8
    char b;    //   16     1
    struct B second;   //    24   12
    short d;   //   36   2
}four;   //   40






int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@" struct A: %lu -\n- struct B: %lu -\n- struct C: %lu -\n- struct D: %lu -\n-", sizeof(one), sizeof(two), sizeof(three), sizeof(four));
        
        
        
    }
    return 0;
}







