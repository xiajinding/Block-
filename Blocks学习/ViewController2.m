//
//  ViewController2.m
//  Blocks学习
//
//  Created by Lemon on 15/12/15.
//  Copyright © 2015年 LemonXia. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()
@property (weak, nonatomic) IBOutlet UITextField *inputTF;

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor yellowColor];
}


//点击Button返回前一个ViewController页面
- (IBAction)popBtnClicked:(id)sender {
//    if (self.delegate && [self.delegate respondsToSelector:@selector(passTextValue:)]) {
//        //self.inputTF是该页面中的TextField输入框
//        [self.delegate passTextValue:self.inputTF.text];
//    }
//    
    if (self.NextViewControllerBlock) {
        self.NextViewControllerBlock(self.inputTF.text);
    }
   [self dismissViewControllerAnimated:YES completion:^{
       
   }];
}


@end
