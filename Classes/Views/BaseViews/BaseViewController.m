//
//  BaseViewController.m
//  CMStructure
//
//  Created by Jerry on 14-4-4.
//  Copyright (c) 2015 Jerry. All rights reserved.
//

#import "BaseViewController.h"


@interface BaseViewController ()
@end


@implementation BaseViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id)initWithStyle:(BaseControllerStyle)style
{
    self = [super init];
    if(self)
    {
        self.baseControllerStyle = style;
    }
    return self;
}

- (void)loadView
{
    [super loadView];
    [self loadLeft];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)loadLeft
{
    __weak __typeof(self) wSelf = self;
    switch (self.baseControllerStyle) {
        case BaseControllerBackStyleArrow:
        {
            UIImage *image = [UIImage imageNamed:@"backIcon"];
            UIBarButtonItem *back = [[UIBarButtonItem alloc] bk_initWithImage:image style:UIBarButtonItemStylePlain handler:^(id sender) {
                [wSelf.navigationController popViewControllerAnimated:YES];
            }];
            self.navigationItem.leftBarButtonItem = back;
        }
            break;
        case BaseControllerBackStyleMenu:
        {
            UIBarButtonItem *left = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"slideToLeft"]
                                                                     style:UIBarButtonItemStylePlain
                                                                    target:self
                                                                    action:@selector(presentLeftMenuViewController:)];
            self.navigationItem.leftBarButtonItem = left;
        }
            break;
        case BaseControllerBackStyleCancel:
        {
            UIBarButtonItem *left = [[UIBarButtonItem alloc] bk_initWithBarButtonSystemItem:UIBarButtonSystemItemCancel handler:^(id sender) {
                [wSelf.navigationController dismissViewControllerAnimated:YES completion:nil];
            }];
            self.navigationItem.leftBarButtonItem = left;
        }
            break;
        default:
            break;
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


@end
