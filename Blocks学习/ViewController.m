//
//  ViewController.m
//  Blocks学习
//
//  Created by Lemon on 15/12/15.
//  Copyright © 2015年 LemonXia. All rights reserved.
//

// http://my.oschina.net/leejan97/blog/268536 网址

#import "ViewController.h"
#import "ViewController1.h"
#import "ViewController2.h"

//本类实现这个协议ViewControllerDelegate
@interface ViewController ()<ViewControllerDelegate,NextViewControllerDelegate>

@property (nonatomic, assign) id<ViewControllerDelegate> delegate;
@property (weak, nonatomic) IBOutlet UILabel *nextVCInfoLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do anyditional setup after loading the view, typically from a nib.
  
//    
//    self.delegate = self;
//    if (self.delegate && [self.delegate respondsToSelector:@selector(selfDelegateMethod)]) {
//        [self.delegate selfDelegateMethod];
//    }
}
- (IBAction)buttonClock:(id)sender {
    ViewController2 * viewController = [[ViewController2 alloc]init];
//    viewController.delegate = self;// 设置代理

   viewController.NextViewControllerBlock = ^(NSString *tfText){
        [self resetLabel:tfText];
   };
    [self presentViewController:viewController animated:YES completion:^{
        
    }];
}

#pragma mark - ViewControllerDelegate method
//实现协议中的方法
//- (void)selfDelegateMethod
//{
//    NSLog(@"自己委托自己实现的方法");
//}

//实现协议NextViewControllerDelegate中的方法
//#pragma mark - NextViewControllerDelegate method
//- (void)passTextValue:(NSString *)tfText
//{
//    //self.nextVCInfoLabel是显示NextViewController传递过来的字符串Label对象
//    self.nextVCInfoLabel.text = tfText;
//}
    
#pragma mark - NextViewControllerBlock method
- (void)resetLabel:(NSString *)textStr
{
    self.nextVCInfoLabel.text = textStr;
}
    
@end
