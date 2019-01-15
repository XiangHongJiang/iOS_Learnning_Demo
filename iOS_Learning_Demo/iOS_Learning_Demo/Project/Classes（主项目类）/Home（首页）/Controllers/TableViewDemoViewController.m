//
//  TableViewDemoViewController.m
//  iOS_Learning_Demo
//
//  Created by MrYeL on 2019/1/15.
//  Copyright © 2019 MrYeL. All rights reserved.
//

#import "TableViewDemoViewController.h"

@interface TableViewDemoViewController ()<UITableViewDelegate,UITableViewDataSource>

/** DataList*/
@property (nonatomic, copy) NSArray * dataArray;
/** TableView*/
@property (nonatomic, strong) UITableView * tableView;

@end

@implementation TableViewDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"TableView使用";
    
    /**1.配置TableView*/
    [self configTableView];
    
    /**2.模拟数据*/
    [self transData];
}
#pragma mark - Custom Method
- (void)configTableView {
    
    /** 创建*/
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, NAVIGATION_BAR_HEIGHT, kScreenWidth, kScreenHeight - NAVIGATION_BAR_HEIGHT - HOME_INDICATOR_HEIGHT) style:UITableViewStylePlain];
    /** 设置*/
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.tableFooterView = [UIView new];
    /** 添加*/
    [self.view addSubview:self.tableView];
    
    /** iOS 11*/
    if (@available(iOS 11.0, *)) {
        self.tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    }
}
#pragma mark - NetWork
- (void)transData {
    self.dataArray = @[ @"数据0", @"数据1", @"另一个"];
}
#pragma mark - TableView DataSource：代理
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.dataArray.count;
}
/**
 获取cell
 */
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    /** 获取Id*/
    static NSString *cellId = @"PersonInfoCell";
    /** 获取Cell*/
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    /** 配置Cell*/
//    cell.selectionStyle = UITableViewCellSelectionStyleNone;//去除下划线，默认有单下划线

    /** 赋值Cell*/
    cell.textLabel.text = self.dataArray[indexPath.row];


    return cell;
}
#pragma mark - TableView Delegate：代理
//cell高度，子类重写吧
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 60;
}

@end
