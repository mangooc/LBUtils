//
//  UIView+Util.m
//  LBUtils
//
//  Created by Jerry.li on 16/4/13.
//  Copyright © 2016年 mangooc. All rights reserved.
//

#import "UIView+Util.h"

@implementation UIView (Util)

- (CGFloat)originX {
    return self.frame.origin.x;
}

- (CGFloat)originY {
    return self.frame.origin.y;
}

- (CGFloat)width {
    return self.frame.size.width;
}

- (CGFloat)height {
    return self.frame.size.height;
}

@end
