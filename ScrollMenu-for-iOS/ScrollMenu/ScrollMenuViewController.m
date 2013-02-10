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

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.frame = CGRectMake(0, 0, kMenuWidth * kMenuTotal, kMenuHeight);

    for (int i = 0; i < kMenuTotal; i++) {
        UILabel *menu = [[UILabel alloc] init];
        menu.frame = CGRectMake(kMenuWidth * i, 0, kMenuWidth, kMenuHeight);
        menu.text = [NSString stringWithFormat:@"%d", i];
        menu.textAlignment = NSTextAlignmentCenter;
        menu.textColor = [UIColor whiteColor];
        menu.backgroundColor = [UIColor grayColor];
        menu.layer.borderColor = [[UIColor blackColor] CGColor];
        menu.layer.borderWidth = 1.0f;
        menu.backgroundColor = [UIColor blueColor];

        menu.tag = i + 1;

        menu.userInteractionEnabled = YES;

        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self
                                                                              action:@selector(tapMenu:)];
        [menu addGestureRecognizer:tap];
        [self.view addSubview:menu];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload {
    [self setView:nil];
    [super viewDidUnload];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
}


- (void)tapMenu:(UITapGestureRecognizer *)sender {
    NSLog(@"sender = %d", sender.view.tag);
}

@end
