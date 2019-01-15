//
//  HomeViewController.m
//  iOS_Learning_Demo
//
//  Created by MrYeL on 2019/1/15.
//  Copyright © 2019 MrYeL. All rights reserved.
//

#import "HomeViewController.h"

#import "TableViewDemoViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"首页";
    
    UILabel* tipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 20)];
    tipLabel.text = @"点击一下去使用";
    tipLabel.textAlignment = NSTextAlignmentCenter;
    tipLabel.center = self.view.center;
    [self.view addSubview:tipLabel];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [self.navigationController pushViewController:[TableViewDemoViewController new] animated:YES];
}


@end
