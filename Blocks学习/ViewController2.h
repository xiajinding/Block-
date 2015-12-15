//
//  ViewController2.h
//  Blocks学习
//
//  Created by Lemon on 15/12/15.
//  Copyright © 2015年 LemonXia. All rights reserved.
//

#import "ViewController.h"

//定义一个协议，前一个页面ViewController要服从该协议，并且实现协议中的方法
@protocol NextViewControllerDelegate <NSObject>
- (void)passTextValue:(NSString *)tfText;

@end

@interface ViewController2 : ViewController
@property (nonatomic, assign) id<NextViewControllerDelegate> delegate;

@property (nonatomic, copy) void (^NextViewControllerBlock)(NSString *tfText);
@end
