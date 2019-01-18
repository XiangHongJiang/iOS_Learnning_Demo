//
//  App_Header_Define.h
//  App_General_Template
//
//  Created by JXH on 2017/6/27.
//  Copyright © 2017年 JXH. All rights reserved.
//

#ifndef App_Header_Define_h
#define App_Header_Define_h

// 是否是iPhoneX
#define iPhoneX \
(([UIScreen mainScreen].bounds.size.height / [UIScreen mainScreen].bounds.size.width) > 1.78 ? YES : NO)

// 状态栏高度
#define STATUS_BAR_HEIGHT (iPhoneX ? 44.f : 20.f)
// 导航栏高度
#define NAVIGATION_BAR_HEIGHT (iPhoneX ? 88.f : 64.f)
// tabBar高度
#define TAB_BAR_HEIGHT (iPhoneX ? (49.f+34.f) : 49.f)
// indicator
#define HOME_INDICATOR_HEIGHT (iPhoneX ? 34.f : 0.f)
// 屏幕宽度
#define kScreenWidth [UIScreen mainScreen].bounds.size.width
// 屏幕高度
#define kScreenHeight [UIScreen mainScreen].bounds.size.height


#endif /* App_Header_Define_h */
