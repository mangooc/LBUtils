//
//  NSString+Wrapper.h
//  StringUtils
//
//  Created by Jerry.li on 16/3/31.
//  Copyright © 2016年 mangooc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Wrapper)

/**
 *  检验字符串是否为空
 *
 *  @param string 需要检验的字符串
 *
 *  @return
 */
+ (BOOL)isNullOrEmpty:(NSString *)string;

/**
 *  正则匹配字符串
 *
 *  @param regx   正则表达式
 *
 *  @return
 */
- (BOOL)match:(NSString *)regx;

/**
 *  获取字符长度区分中英文
 *
 *  备注：
 *      中英文混合时
 *      中文按2个字节计算
 *      英文按1个字节计算
 *
 *  @return
 */
- (int)getStringLength;

/**
 *  分割字符串
 *
 *  @param separator 指定分割字符
 *
 *  @return
 */
- (NSArray *)split:(NSString *)separator;

/**
 *  移除字符串中的所有空字符
 *  包括首尾和字符串中间的空字符
 *
 *  @return
 */
- (NSString *)trim;

/**
 *  字符串匹配
 *
 *  @param anotherString
 *
 *  @return
 */
- (BOOL) equals:(NSString *) anotherString;

/**
 *  替换原字符串
 *
 *  @param origin      原字符串
 *  @param replacement 替换的字符串
 *
 *  @return 替换后的字符串
 */
- (NSString *) replaceAll:(NSString*)origin with:(NSString*)replacement;

/**
 *  截取字符串
 *
 *  @param beginIndex
 *  @param endIndex
 *
 *  @return
 */
- (NSString *)substring:(int)beginIndex endIndex:(int)endIndex;

@end
