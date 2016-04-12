//
//  NSDateUtils.h
//  StringUtils
//
//  Created by Jerry.li on 16/3/31.
//  Copyright © 2016年 mangooc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDateUtil : NSObject

/**
 *  把NSDate日期转换为字符串日期
 *
 *  @param date   日期
 *  @param format 格式
 *
 *  @return 格式化后的字符串日期
 */
+ (NSString *)stringFromDate:(NSDate *)date format:(NSString *)format;

/**
 *  把字符串日期转换为NSDate
 *
 *  @param dateString 字符串日期
 *  @param format     格式
 *
 *  @return NSDate
 */
+ (NSDate *)dateFromString:(NSString *)dateString format:(NSString *)format;

@end
