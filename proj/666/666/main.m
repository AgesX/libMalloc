//
//  main.m
//  666
//
//  Created by Jz D on 2021/5/28.
//

#import <Foundation/Foundation.h>

#import <objc/runtime.h>



@interface Cavalier : NSObject
{
    
    // 成员变量 ivar
    
    NSString *hobby;
    NSObject *objc;
}

// 属性 property

@property (nonatomic, copy) NSString *nickName;
@property (nonatomic, strong) NSString *name;




@end


@implementation Cavalier

@end




int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        
        //  Objective-C Runtime Programming Guide
        
        
        
        
        //  https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/ObjCRuntimeGuide/Articles/ocrtPropertyIntrospection.html#//apple_ref/doc/uid/TP40008048-CH101-SW6
        
        
        id LenderClass = objc_getClass("Cavalier");
        unsigned int outCount, i;
        objc_property_t *properties = class_copyPropertyList(LenderClass, &outCount);
        for (i = 0; i < outCount; i++) {
            objc_property_t property = properties[i];
            fprintf(stdout, "%s ---  %s --  \n \n", property_getName(property), property_getAttributes(property));
        }

        
/*
 nickName ---  T@"NSString",C,N,V_nickName --
 
 
 
 
 
 
 
 T , 代表 type ，类型
 
 
 
 
 C, 代表 copy , 内存管理
 
 
 N， 代表 nonatomic , 线程管理
 
 
 
 V, 代表 variable ， 是变量， 不是常量 constant
 
 
 
 
 
 
 
 
 
 */
        
        
        
        
        /*
        
        
        name ---  T@"NSString",&,N,V_name --
        

        
         
         
         &,   代表 strong , 内存管理, retain
         retain 就是 strong
         
         
         
        */
        
        
        
        for (unsigned i = 11;;) {
            
            NSLog(@"cruel   ");
            // 无限循环
        }
        
        
    }
    return 0;
}









