//
//  SurfaceListTableViewCell.m
//  iOS_Learning_Demo
//
//  Created by zhangsheng on 2019/1/17.
//  Copyright © 2019年 MrYeL. All rights reserved.
//

#import "SurfaceListTableViewCell.h"
#import "OrderInfo.h"

@implementation SurfaceListTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setDataInfo:(OrderInfo *)dataInfo {
    
    self.username.text = dataInfo.name;
    self.company.text = dataInfo.compay;
    
    //
    
}


@end
