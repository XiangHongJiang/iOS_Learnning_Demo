//
//  ModuleChoiceViewController.m
//  iOS_Learning_Demo
//
//  Created by zhangsheng on 2019/1/16.
//  Copyright © 2019年 MrYeL. All rights reserved.
//

#import "ModuleChoiceViewController.h"
#import "Masonry.h"

@interface ModuleChoiceViewController ()

@end

@implementation ModuleChoiceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"选择功能";
    
    // UIbutton：声明、alloc：开辟空间，init：初始化
    UIButton *buttonf2f = [[UIButton alloc] init];
    // 将button 添加到view中
    [self.view addSubview:buttonf2f];
    
    // 利用masonry惊醒约束布局
    [buttonf2f mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(45);
        make.right.mas_equalTo(self.view.mas_right).offset(-45);
        make.top.mas_equalTo(219+NAVIGATION_BAR_HEIGHT);
        make.height.mas_equalTo(46);
    }];
    
    // 增加一个层
    CAGradientLayer *gradientLayer0 = [[CAGradientLayer alloc] init];
    //因为利用了Masonry.h，后面不能宽高。https://www.jianshu.com/p/4676d84458f7
    [buttonf2f layoutIfNeeded];
    // 设置层的长宽高和控件一致
    gradientLayer0.frame = buttonf2f.bounds;
    gradientLayer0.colors = @[
                              (id)[UIColor colorWithRed:66.0f/255.0f green:213.0f/255.0f blue:143.0f/255.0f alpha:1.0f].CGColor,
                              (id)[UIColor colorWithRed:147.0f/255.0f green:221.0f/255.0f blue:186.0f/255.0f alpha:1.0f].CGColor];
    //开始点
    gradientLayer0.startPoint = CGPointMake(0, 0);
    //结束点
    gradientLayer0.endPoint = CGPointMake(1, 1);
    //渐变点
    gradientLayer0.locations = @[@(0.5),@(1.0)];
    // 增加到控件上
    [buttonf2f.layer addSublayer:gradientLayer0];
    // 设置空间标题和样式
    [buttonf2f setTitle:@"面销执行" forState:UIControlStateNormal];
    
    [buttonf2f addTarget:self action:@selector(changetoF2fListPage) forControlEvents:UIControlEventTouchUpInside];
    
    // UIbutton：声明、赋值样式
    UIButton *packagebutton = [UIButton buttonWithType:UIButtonTypeCustom];
    
    // 将button 添加到view中
    [self.view addSubview:packagebutton];
    
    // 利用masonry惊醒约束布局
    [packagebutton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(45);
        make.right.mas_equalTo(self.view.mas_right).offset(-45);
        make.top.mas_equalTo(285+NAVIGATION_BAR_HEIGHT);
        make.height.mas_equalTo(46);
    }];
    
    // 增加一个层
    CAGradientLayer *gradientLayer1 = [[CAGradientLayer alloc] init];
    //因为利用了Masonry.h，后面不能宽高。https://www.jianshu.com/p/4676d84458f7
    [packagebutton layoutIfNeeded];
    // 设置层的长宽高和控件一致
    gradientLayer1.frame = buttonf2f.bounds;
    gradientLayer1.colors = @[
                              (id)[UIColor colorWithRed:38.0f/255.0f green:143.0f/255.0f blue:255.0f/255.0f alpha:1.0f].CGColor,
                              (id)[UIColor colorWithRed:139.0f/255.0f green:182.0f/255.0f blue:228.0f/255.0f alpha:1.0f].CGColor];
    //开始点
    gradientLayer1.startPoint = CGPointMake(0, 0);
    //结束点
    gradientLayer1.endPoint = CGPointMake(1, 1);
    //渐变点
    gradientLayer1.locations = @[@(0.5),@(1.0)];
    // 增加到控件上
    [packagebutton.layer addSublayer:gradientLayer1];
    // 设置空间标题和样式
    [packagebutton setTitle:@"操作包执行" forState:UIControlStateNormal];
    
    [packagebutton addTarget:self action:@selector(changetoPackageListPage) forControlEvents:UIControlEventTouchUpInside];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void) changetoF2fListPage{
    NSLog(@"迁移到面销列表页面");
}

- (void) changetoPackageListPage{
    NSLog(@"迁移到操作包列表页面");
}

@end
