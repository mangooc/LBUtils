//
//  NSDateUtils.m
//  StringUtils
//
//  Created by Jerry.li on 16/3/31.
//  Copyright © 2016年 mangooc. All rights reserved.
//

#import "NSDateUtil.h"

@implementation NSDateUtil

+ (NSString *)stringFromDate:(NSDate *)date format:(NSString *)format {
    NSDateFormatter *dateformatter = [[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:format];
    return [dateformatter stringFromDate:date];
}

+ (NSDate *)dateFromString:(NSString *)dateString format:(NSString *)format {
    NSDateFormatter *dateformatter = [[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:format];
    return [dateformatter dateFromString:dateString];
}

@end
