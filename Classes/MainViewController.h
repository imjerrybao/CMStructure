//
//  MainViewController.h
//  CMStructure
//
//  Created by Jerry on 5/7/15.
//  Copyright (c) 2015 Jerry. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UITabBarController
- (instancetype)initWithClasses:(NSArray *)classes titles:(NSArray *)titles images:(NSArray *)images selectedImages:(NSArray *)selectedImages;
@end
