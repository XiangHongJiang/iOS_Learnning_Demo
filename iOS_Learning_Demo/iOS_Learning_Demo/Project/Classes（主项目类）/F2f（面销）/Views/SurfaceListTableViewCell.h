//
//  SurfaceListTableViewCell.h
//  iOS_Learning_Demo
//
//  Created by zhangsheng on 2019/1/17.
//  Copyright © 2019年 MrYeL. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SurfaceListTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *username;
@property (weak, nonatomic) IBOutlet UILabel *company;
@property (weak, nonatomic) IBOutlet UILabel *backgroudtime;
@property (weak, nonatomic) IBOutlet UILabel *comfiretime;
@property (weak, nonatomic) IBOutlet UILabel *executetime;
@property (weak, nonatomic) IBOutlet UILabel *status;


@end

NS_ASSUME_NONNULL_END
