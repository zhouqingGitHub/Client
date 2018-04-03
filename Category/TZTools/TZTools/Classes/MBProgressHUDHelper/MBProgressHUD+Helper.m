//
//  MBProgressHUD+Helper.m
//  BGYFengMinGuiYuan
//
//  Created by mills on 16/11/25.
//  Copyright © 2016年 do1. All rights reserved.
//

#import "MBProgressHUD+Helper.h"
#import "AppDelegate.h"

@implementation MBProgressHUD (Helper)

+ (MBProgressHUD *)showDelayHideTips:(NSString *)text view:(UIView *)view {
    [MBProgressHUD hideHUDForView:view animated:NO];
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.mode = MBProgressHUDModeText;
    hud.labelFont = [UIFont systemFontOfSize:14];
    hud.labelText = text;
//    hud.margin = 10.f;
//    hud.removeFromSuperViewOnHide = YES;
    [hud hide:YES afterDelay:1.5f];
    return hud;
}

+ (MBProgressHUD *)showInWindowsDelayHideTips:(NSString *)text {
    AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    return [self showDelayHideTips:text view:appDelegate.window];
}

@end
