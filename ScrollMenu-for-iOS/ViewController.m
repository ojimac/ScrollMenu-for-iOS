//
//  ViewController.m
//  ScrollMenu-for-iOS
//
//  Created by ojimac on 2013/02/09.
//  Copyright (c) 2013年 ojimac. All rights reserved.
//

#import "ViewController.h"
#import "ScrollMenuConstants.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _scrollMenuViewController = [[ScrollMenuViewController alloc] init];
    _scrollMenuViewController.delegate = self;

    _scrollMenuContainer.delegate = _scrollMenuViewController;
    _scrollMenuContainer.contentSize = CGSizeMake(kMenuWidth * kMenuTotal, kMenuHeight);
    [_scrollMenuContainer addSubview:_scrollMenuViewController.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload {
    [self setScrollMenuContainer:nil];
    [self setScrollContentContainer:nil];
    [super viewDidUnload];
}

#pragma mark -
#pragma mark ScrollMenuViewDelegate method

- (void)menuDidTap:(UILabel *)menu tapPoint:(CGPoint)point {
    [_scrollMenuContainer setContentOffset:point animated:YES];
}

@end
