//
//  FileUtils.h
//  StringUtils
//
//  Created by Jerry.li on 16/3/31.
//  Copyright © 2016年 mangooc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSFileUtil : NSObject

/**
 *  获取Documents目录路径
 *  需要持久化的数据请保存在该目录下面
 *
 *  @return
 */
+ (NSString *)getDocumentsDirectory;

/**
 *  获取Cache目录路径
 *  只是临时缓存不需要持久化存储的数据请保存在该目录下面
 *
 *  @return
 */
+ (NSString *)getCacheDirectory;

/**
 *  检验文件是否存在
 *
 *  @param fileName 文件名
 *
 *  @return
 */
+ (BOOL)fileExists:(NSString *)fileName;

/**
 *  移除指定文件
 *
 *  @param filePath 文件路径
 *
 *  @return
 */
+ (BOOL)removeFileAtPath:(NSString *)filePath;

@end
