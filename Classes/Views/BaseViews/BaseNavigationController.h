//
//  BaseNavigationController.h
//  CMStructure
//
//  Created by Jerry on 14-4-4.
//  Copyright (c) 2014年 Jerry. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BufferedNavigationController.h"

typedef NS_ENUM(NSUInteger, BaseNavigationStyle)
{
    //导航栏风格
    BaseNavigationStyleNormal = 0,
    BaseNavigationStyle20alpha,
    
};

@interface BaseNavigationController : BufferedNavigationController

@property (nonatomic,assign) BaseNavigationStyle baseNavigationStyle;

- (void)setNavigationTintColor:(UIColor *)color;
- (void)setNavigationBarTintColor:(UIColor *)color;
- (id)initWithRootViewController:(UIViewController *)rootViewController styel:(BaseNavigationStyle)sytle;
@end
