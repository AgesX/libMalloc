//
//  main.m
//  002-应用程加载分析
//
//  Created by cooci on 2020/9/24.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"



// 内存 main() dyld image init 注册回调通知 - dyld_start  -> dyld::main()  -> main()
// rax
int main(int argc, char * argv[]) {
    NSLog(@"deng ");
    NSString * appDelegateClassName;
    
    
    
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}



// main 函数之前
// load -> Cxx -> main




__attribute__((constructor)) void qiangZi(){
    printf("来了 : %s \n",__func__);
}



//  __attribute__关键字用来描述函数，变量和数据类型的属性，

//  用于编译器对源代码的优化。


//  函数属性(Function Attribute)


//  constructor


//  构造器， constructor 修饰的函数会在 main 函数之前执行

/*
 
 attribute是GNU C特色之一,
 
 在iOS用的比较广泛.
 
 系统中有许多地方使用到.



 attribute
 可以设置函数属性（Function Attribute ）
 、变量属性（Variable Attribute ）
 和类型属性（Type Attribute)等.




*/



