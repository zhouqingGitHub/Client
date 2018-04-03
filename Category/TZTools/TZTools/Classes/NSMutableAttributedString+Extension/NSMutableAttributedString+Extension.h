//
//  NSMutableAttributedString+Extension.h
//  BGYXMJL
//
//  Created by 邓伟权 on 2017/8/7.
//  Copyright © 2017年 mills. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableAttributedString (Extension)

+ (NSMutableAttributedString *)setText:(NSString*)text font:(UIFont *)font lineSpacing:(CGFloat)lineSpacing;

@end
