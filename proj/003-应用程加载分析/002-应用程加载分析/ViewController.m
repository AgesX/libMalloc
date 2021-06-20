//
//  ViewController.m
//  002-应用程加载分析
//
//  Created by cooci on 2020/9/24.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

+ (void)load{
    NSLog(@"come  %s",__func__);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
