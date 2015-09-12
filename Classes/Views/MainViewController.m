//
//  MainViewController.m
//  buddy
//
//  Created by Jerry on 5/7/15.
//  Copyright (c) 2015 Jerry. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController () <UITabBarControllerDelegate>
@property (nonatomic, strong) NSArray *classes;
@property (nonatomic, strong) NSArray *images;
@property (nonatomic, strong) NSArray *selectedImages;
@property (nonatomic, strong) NSArray *titles;
@end

@implementation MainViewController

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (id)initWithClasses:(NSArray *)classes titles:(NSArray *)titles images:(NSArray *)images selectedImages:(NSArray *)selectedImages
{
    self = [super init];
    if (self) {
        _classes = [NSArray arrayWithArray:classes];
        _titles = [NSArray arrayWithArray:titles];
        _images = [NSArray arrayWithArray:images];
        _selectedImages = [NSArray arrayWithArray:selectedImages];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    self.delegate = self;
    [[UITabBar appearance] setTintColor:[UIColor colorWithHex:0x48cfae]];
    
    int i = 0;
    for (Class class in _classes) {
        UIViewController *vc = (UIViewController *)[[class alloc] init];
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
        nav.tabBarItem = [[UITabBarItem alloc] initWithTitle:[_titles objectAtIndex:i] image:[_images objectAtIndex:i] selectedImage:[_selectedImages objectAtIndex:i]];
        nav.tabBarItem.tag = 1000+i;
        [self unSelectedTapTabBarItems:nav.tabBarItem];
        [self selectedTapTabBarItems:nav.tabBarItem];
        i++;
    }
    self.selectedIndex = 0;
}

#pragma mark - UITabBarDelegate
- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item
{
}


- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController NS_AVAILABLE_IOS(3_0)
{
    return YES;
}

-(void)unSelectedTapTabBarItems:(UITabBarItem *)tabBarItem
{
}

-(void)selectedTapTabBarItems:(UITabBarItem *)tabBarItem
{
}

@end
