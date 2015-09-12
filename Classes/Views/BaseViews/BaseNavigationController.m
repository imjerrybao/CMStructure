//
//  BaseNavigationController.m
//  CMStructure
//
//  Created by Jerry on 14-4-4.
//  Copyright (c) 2015 Jerry. All rights reserved.
//

#import "BaseNavigationController.h"
#define NAV_COLOR   0x48cfae

@interface BaseNavigationController () <UINavigationControllerDelegate>

@end


@implementation BaseNavigationController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.navigationBar.translucent = NO;
        [self setNavigationTintColor:[UIColor whiteColor]];
        [self setNavigationBarTintColor:COLOR_WITH_HEX_ALPHA(NAV_COLOR, 0.99)];
    }
    return self;
}

- (id)initWithRootViewController:(UIViewController *)rootViewController styel:(BaseNavigationStyle)sytle
{
    self = [super initWithRootViewController:rootViewController];
    if (self)
    {
        self.baseNavigationStyle = sytle;
    }
    return self;
}

- (instancetype)initWithRootViewController:(UIViewController *)rootViewController
{
    self = [super initWithRootViewController:rootViewController];
    if(self)
    {
        //默认颜色
        [self setNavigationTintColor:[UIColor whiteColor]];
        [self setNavigationBarTintColor:COLOR_WITH_HEX_ALPHA(NAV_COLOR, 0.9)];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    switch (self.baseNavigationStyle)
    {
        case BaseNavigationStyleNormal:
        {
            
        }
            break;
        case BaseNavigationStyle20alpha:
        {
            [self.navigationBar setBackgroundImage:[UIImage ImageWithColor:[UIColor colorWithWhite:0.1 alpha:0.2]] forBarMetrics:UIBarMetricsDefault];
        }
            break;
        default:
            break;
    }
    
}

- (void)setBaseNavigationStyle:(BaseNavigationStyle)baseNavigationStyle
{
    _baseNavigationStyle = baseNavigationStyle;
    switch (baseNavigationStyle)
    {
        case BaseNavigationStyleNormal:
        {
            
        }
            break;
        case BaseNavigationStyle20alpha:
        {
            [self.navigationBar setBackgroundImage:[UIImage ImageWithColor:[UIColor colorWithWhite:0.1 alpha:0.2]] forBarMetrics:UIBarMetricsDefault];
        }
            break;
        default:
            break;
    }
}

- (void)setNavigationBarTintColor:(UIColor *)color
{
    [self.navigationBar setBarTintColor:color];
//    [self.navigationBar setBackgroundImage:[UIImage ImageWithColor:color] forBarMetrics:UIBarMetricsDefault];
}

- (void)setNavigationTintColor:(UIColor *)color
{
    [self.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObject:color forKey:NSForegroundColorAttributeName]];
    [[UIBarButtonItem appearance] setTintColor:color];
    [[UINavigationBar appearance] setTintColor:color];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
