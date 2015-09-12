//
//  BaseViewController.h
//  CMStructure
//
//  Created by Jerry on 14-4-4.
//  Copyright (c) 2015 Jerry. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, BaseControllerStyle)
{
    //返回键风格
    BaseControllerBackStyleNormal = 0,
    BaseControllerBackStyleArrow,
    BaseControllerBackStyleMenu,
    BaseControllerBackStyleCancel,
};

@interface BaseViewController : UIViewController

- (id)initWithStyle:(BaseControllerStyle)style;
@property (nonatomic,assign) BaseControllerStyle baseControllerStyle;

@end
