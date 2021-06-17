//
//  LGPerson.h
//  002-instrumentObjcMessageSends辅助分析
//
//  Created by cooci on 2020/9/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LGPerson : NSObject
- (void)sayInstanceMethod;
+ (void)sayClassMethod;

@end

NS_ASSUME_NONNULL_END
