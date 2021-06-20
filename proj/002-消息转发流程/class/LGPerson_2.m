//
//  LGPerson.m
//  002-instrumentObjcMessageSends辅助分析
//
//  Created by cooci on 2020/9/21.
//

#import "LGPerson.h"
#import "LGStudent.h"

@implementation LGPerson


// 给 selector , 换一个接收者



// LG 的快速转发流程

- (void)sayHi{
    
    NSLog(@"   Hi  ");
    
}


- (id)forwardingTargetForSelector:(SEL)aSelector{
    
    
    NSLog(@"ha ha ha, %s - %@ - \n - ", __func__ , NSStringFromSelector(aSelector));
    
    
    // runtime + aSelector + addMethod + IMP
    // 可以在运行时，动态添加方法
    
    
    
    return [super forwardingTargetForSelector: aSelector];
}



- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector{

    
    
    NSLog(@"la la la , %s - %@ - \n - ", __func__ , NSStringFromSelector(aSelector));
    
    
    
    return [NSMethodSignature signatureWithObjCTypes: "v@:"];
    
    
    
    //  v@:
    
    //  返回值 + 参数类型
    
}




- (void)forwardInvocation:(NSInvocation *)anInvocation{
    
    
    
    
    
    
    NSLog(@"6  6  6 , %s - %@ - \n - ", __func__ , anInvocation);
    
    
    
    
    
}





// 竟然没有 crash, 抛弃了这个消息



@end



