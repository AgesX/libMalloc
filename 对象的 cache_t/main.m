//
//  main.m
//  KCObjc
//
//  Created by Cooci on 2020/7/24.
//

#import <Foundation/Foundation.h>
#import "LGPerson.h"
#import <objc/runtime.h>


// cache_t
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        LGPerson *p  = [LGPerson alloc];
        Class pClass = [LGPerson class];
        
        
        
//        p.lgName     = @"Cooci";
//        p.nickName   = @"KC";
        // 缓存一次方法 sayHello
        // 4
        [p sayHello];
        [p sayCode];
        [p sayMaster];
//        [p sayNB];


        NSLog(@"%@",pClass);
    }
    return 0;
}








//        p.lgName     = @"Cooci";
//        p.nickName   = @"KC";
//        cache 添加两个 bucket,  occupied + 2










//        LGPerson *p  = [[ LGPerson alloc ] init];
//        调用 init 方法，
//        cache 添加 1 个 bucket,  occupied + 1
