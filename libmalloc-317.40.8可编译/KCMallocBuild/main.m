//
//  main.m
//  KCMallocBuild
//
//  Created by cooci on 2021/4/25.
//

/**
 Cooci - 和谐学习 不急不躁
 需求: 针对malloc源码修改
 目标: 编译调试 objc 下层流程: calloc
 缺陷:
	- 对zone的优化处理进行隔断
	- nano_v2的处理
	- 还有platform的环境变量简化
 */

#import <Foundation/Foundation.h>
#import <malloc/malloc.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
		// 研究的是 calloc 返回的值
		// 为当前的指针 *p
		
		
		
		
		
		
		// calloc , 	开辟内存
		void *p = calloc(1, 40);
		
		
		
		
		
		
		
		/*
		void *p = calloc(1, 24);
		NSLog(@"%lu",malloc_size(p));
        NSLog(@"Hello, World!");
		 
		 
		 */
    }
    return 0;
}










