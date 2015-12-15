//
//  ViewController.h
//  Blocks学习
//
//  Created by Lemon on 15/12/15.
//  Copyright © 2015年 LemonXia. All rights reserved.
//

#import <UIKit/UIKit.h>
//定义一个协议
@protocol ViewControllerDelegate<NSObject>
- (void)selfDelegateMethod;
@end

@interface ViewController : UIViewController


@end

