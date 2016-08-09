//
//  PrintLog.m
//  aaaa
//
//  Created by apple on 16/8/9.
//  Copyright © 2016年 yuantuan. All rights reserved.
//

#import "PrintLog.h"

@implementation PrintLog

+ (void)printLog
{
    NSLog(@"PrintLog: printLog");
}

+ (UIImage *)getImageWithIndex:(NSUInteger)imageIndex
{
    return [UIImage imageNamed:[NSString stringWithFormat:@"%lu.jpg", (unsigned long)imageIndex]];
}

@end
