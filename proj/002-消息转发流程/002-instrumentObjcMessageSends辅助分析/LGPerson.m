//
//  LGPerson.m
//  002-instrumentObjcMessageSends辅助分析
//
//  Created by cooci on 2020/9/21.
//

#import "LGPerson.h"
#import "LGStudent.h"

@implementation LGPerson


// 打印流程，分析问题


// 问题：  为什么 resolveInstanceMethod 会来两次


- (void)sayHi{
    
    NSLog(@"   Hi  ");
    
}


+ (BOOL)resolveInstanceMethod:(SEL)sel{
    
    NSLog(@"1   _   %s _ \n _ ", __func__);
    return [super resolveInstanceMethod: sel];
}




- (id)forwardingTargetForSelector:(SEL)aSelector{
    NSLog(@"2   _   %s  _ \n _", __func__);
    return [super forwardingTargetForSelector: aSelector];
}





- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector{
    
    NSLog(@"3   _   %s  _ \n _ ", __func__);
    return  [NSMethodSignature signatureWithObjCTypes: "v@:"];
}



- (void)forwardInvocation:(NSInvocation *)anInvocation{
    NSLog(@"4   _   %s  _ \n _", __func__);
}



@end





// bt,   查看堆栈
