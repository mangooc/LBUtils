//
//  NSString+Wrapper.m
//  StringUtils
//
//  Created by Jerry.li on 16/3/31.
//  Copyright © 2016年 mangooc. All rights reserved.
//

#import "NSString+Wrapper.h"

@implementation NSString (Wrapper)

+ (BOOL)isNullOrEmpty:(NSString *)string {
    if ([string isKindOfClass:[NSNull class]]) {
        return YES;
    }
    if (string == nil || string == NULL || [string isEqualToString:@""]) {
        return YES;
    }
    if ([[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length] == 0) {
        return YES;
    }
    return NO;
}

- (BOOL)match:(NSString *)regx {
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regx];
    return [pred evaluateWithObject:self];
}

- (int)getStringLength {
    int stringLength = 0;
    NSString *chinese = @"[\u4e00-\u9fa5]";
    for (int i = 0; i < self.length; i++) {
        NSString *temp = [self substring:i endIndex:i + 1];
        if ([temp match:chinese]) {
            stringLength += 2;
        } else {
            stringLength += 1;
        }
    }
    return stringLength;
}

- (NSArray *)split:(NSString *)separator {
    return [self componentsSeparatedByString:separator];
}

- (NSString *)trim {
    //1. 去除掉首尾的空白字符和换行字符
    NSString *trimStr = [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    //2. 去除掉其它位置的空白字符
    trimStr = [trimStr stringByReplacingOccurrencesOfString:@" " withString:@""];
    return trimStr;
}

- (BOOL) equals:(NSString *) anotherString {
    return [self isEqualToString:anotherString];
}

- (NSString *)replaceAll:(NSString *)origin with:(NSString *)replacement {
    return [self stringByReplacingOccurrencesOfString:origin withString:replacement];
}

- (NSString *)substring:(int)beginIndex endIndex:(int)endIndex {
    if (beginIndex >= endIndex) {
        return @"Error: 开始索引大于结束索引";
    }
    NSRange range = NSMakeRange(beginIndex, endIndex - beginIndex);
    return [self substringWithRange:range];
}

@end
