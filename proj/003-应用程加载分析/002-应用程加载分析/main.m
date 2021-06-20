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
