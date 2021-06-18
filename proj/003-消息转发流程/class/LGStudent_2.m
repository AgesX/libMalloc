//
//  LGStudent.m
//  002-instrumentObjcMessageSends辅助分析
//
//  Created by cooci on 2020/9/23.
//

#import "LGStudent.h"

@implementation LGStudent


- (void)sayInstanceMethod{
    NSLog(@"%s",__func__);
}
+ (void)sayClassMethod{
    NSLog(@"%s",__func__);
}

@end
