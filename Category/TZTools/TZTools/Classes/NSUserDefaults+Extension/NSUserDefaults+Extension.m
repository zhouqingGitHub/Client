//
//  NSUserDefaults+Extension.m
//  BGYXMJL
//
//  Created by Ethan Guo on 2017/10/31.
//  Copyright © 2017年 mills. All rights reserved.
//

#import "NSUserDefaults+Extension.h"

@implementation NSUserDefaults (Extension)

- (NSString *)getVersionForKey:(NSString *)key {
    NSString *version = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    if (!version || !version.length) {
        version = kDefaultTimeStamp;
    }
    
    return version;
}

- (void)saveVersion:(NSInteger)newVersion key:(NSString *)key {
    NSString *oldVersionString = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    
    if (!oldVersionString || !oldVersionString.length) {
        [[NSUserDefaults standardUserDefaults] setObject:[NSString stringWithFormat:@"%ld", newVersion] forKey:key];
    } else {
        if (newVersion > [oldVersionString integerValue]) {
            [[NSUserDefaults standardUserDefaults] setObject:[NSString stringWithFormat:@"%ld", newVersion] forKey:key];
        }
    }
}

@end
