//
//  ScrollMenuViewController.m
//  ScrollMenu-for-iOS
//
//  Created by ojimac on 2013/02/09.
//  Copyright (c) 2013年 ojimac. All rights reserved.
//

#import "ScrollMenuViewController.h"
#import "ScrollMenuConstants.h"

#import <QuartzCore/QuartzCore.h>

@interface ScrollMenuViewController ()

@end

@implementation ScrollMenuViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    // fix y point
    self.view.frame = self.view.bounds;

    for (int i = 0; i < kMenuTotal; i++) {
        UILabel *menu = [[UILabel alloc] init];
        menu.frame = CGRectMake(kMenuWidth * i, 0, kMenuWidth, kMenuHeight);
        menu.backgroundColor = [UIColor grayColor];
        menu.layer.borderColor = [[UIColor blackColor] CGColor];
        menu.layer.borderWidth = 1.0f;
        menu.backgroundColor = [UIColor blueColor];
        [self.view addSubview:menu];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
