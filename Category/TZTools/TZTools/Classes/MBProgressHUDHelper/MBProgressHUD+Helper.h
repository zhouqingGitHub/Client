//
//  MBProgressHUD+Helper.h
//  BGYFengMinGuiYuan
//
//  Created by mills on 16/11/25.
//  Copyright © 2016年 do1. All rights reserved.
//

#import <MBProgressHUD/MBProgressHUD.h>

@interface MBProgressHUD (Helper)


/**
 展示显示框

 @param text 展示的内容
 @param view 所在的视图
 @return MBProgressHUD类
 */
+ (MBProgressHUD *)showDelayHideTips:(NSString *)text view:(UIView *)view;

/**
 展示显示框(有时间限制)

 @param text 展示的内容
 @return MBProgressHUD类
 */
+ (MBProgressHUD *)showInWindowsDelayHideTips:(NSString *)text;

@end
