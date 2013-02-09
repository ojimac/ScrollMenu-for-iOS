//
//  ViewController.m
//  ScrollMenu-for-iOS
//
//  Created by ojimac on 2013/02/09.
//  Copyright (c) 2013年 ojimac. All rights reserved.
//

#import "ViewController.h"
#import "ScrollMenuViewController.h"
#import "ScrollMenuConstants.h"

#define kScroll
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    ScrollMenuViewController *scrollMenuViewController = [[ScrollMenuViewController alloc] init];
    [_scrollMenuContainer addSubview:scrollMenuViewController.view];
    _scrollMenuContainer.contentSize = CGSizeMake(kMenuWidth * kMenuTotal, kMenuHeight);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload {
    [self setScrollMenuContainer:nil];
    [self setScrollContentContainer:nil];
    [super viewDidUnload];
}

@end
