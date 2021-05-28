//
//  main.m
//  666
//
//  Created by Jz D on 2021/5/28.
//

#import <Foundation/Foundation.h>


@interface Warrior : NSObject



@property (nonatomic, strong) NSString * weapon;


@property (nonatomic, strong) NSString * shield;

@property (nonatomic, assign) double ally;

@end



@implementation Warrior



@end


void float2HEX(float f){
    union uuf { float f; char s[4]; } uf;
    uf.f = f;
    printf("0x");
    for (int i = 3; i > 0; i--)
        printf("%02x", 0xff & uf.s[i]);
    printf("\n");
}






void double2HEX(double d){
    union uud { double d; char s[8]; } ud;
    ud.d = d;
    printf("0x");
    for (int i=7; i >= 0; i--)
        printf("%02x", 0xff & ud.s[i]);
    
    printf("\n");
    
}





int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        
        
        
        Warrior * k = [Warrior new];
        k.shield = @"fast";
        k.weapon = @"furious";
        k.ally = 180;
        
        
        
    }
    return 0;
}




//  x/4gx
// x ,  打印内存情况
// 4 ， 打印 4 段

// g,   格式化，输出打印
// iOS， 小端模式，应该反向读


// 最后的一个 x, 打印的意思
// 使用 16 进制，来打印















//  x/4gw k
// 采用 w, 以 16 进制打印
// 只打印 8 个








// 内存布局上，double 和 float , 是有特殊处理的
