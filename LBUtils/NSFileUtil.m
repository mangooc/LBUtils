//
//  FileUtils.m
//  StringUtils
//
//  Created by Jerry.li on 16/3/31.
//  Copyright © 2016年 mangooc. All rights reserved.
//

#import "NSFileUtil.h"

@implementation NSFileUtil

+ (NSString *)getDocumentsDirectory {
    NSString *documentsPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    return documentsPath;
}

+ (NSString *)getCacheDirectory {
    NSString *cachePath = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) firstObject];
    return cachePath;
}

+ (BOOL)fileExists:(NSString *)fileName {
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSString *cachePath = [[self getCacheDirectory] stringByAppendingPathComponent:fileName];
    return [fileManager fileExistsAtPath:cachePath];
}

+ (BOOL)removeFileAtPath:(NSString *)filePath {
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSError *error = nil;
    return [fileManager removeItemAtPath:filePath error:&error];
}

@end
