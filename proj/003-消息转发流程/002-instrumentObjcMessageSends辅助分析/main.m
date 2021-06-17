//
//  main.m
//  002-instrumentObjcMessageSends辅助分析
//
//  Created by cooci on 2020/9/21.
//

#import <Foundation/Foundation.h>
#import "LGPerson.h"

extern void instrumentObjcMessageSends(BOOL flag);

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        LGPerson *person = [LGPerson alloc];
        
        instrumentObjcMessageSends(YES);
        [person sayInstanceMethod];
        instrumentObjcMessageSends(NO);
        
    }
    return 0;
}



//                   写入的文件目录
//                                          /private/tmp/msgSends-8664
