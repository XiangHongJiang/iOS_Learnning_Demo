//
//  SurfaceListTableViewCell.m
//  iOS_Learning_Demo
//
//  Created by zhangsheng on 2019/1/17.
//  Copyright © 2019年 MrYeL. All rights reserved.
//

#import "SurfaceListTableViewCell.h"

@implementation SurfaceListTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    UIView *view1= [[UIView alloc] initWithFrame:CGRectMake(0, NAVIGATION_BAR_HEIGHT+200,  200,40)];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
