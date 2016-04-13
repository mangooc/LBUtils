//
//  UIColor+Util.h
//  LBUtils
//
//  Created by Jerry.li on 16/4/13.
//  Copyright © 2016年 mangooc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Util)

/**
 * 十六进制颜色码转换成iOS可用的RGB
 *
 *  @param hexColorString 十六进制的颜色码 eg:#000000
 *
 *  @return
 */
+ (UIColor *)colorWithHexString:(NSString *)hexColorString;

/**
 *  十六进制颜色码转换成iOS可用的RGB
 *
 *  @param hexColorString 十六进制颜色码
 *  @param alpha 透明度
 *
 *  @return
 */
+ (UIColor *)colorWithHexString:(NSString *)hexColorString alpha:(CGFloat)alpha;

@end
