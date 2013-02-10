//
//  ViewController.h
//  ScrollMenu-for-iOS
//
//  Created by ojimac on 2013/02/09.
//  Copyright (c) 2013年 ojimac. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ScrollMenuViewController.h"

@interface ViewController : UIViewController <
    UIScrollViewDelegate
>

@property (nonatomic, strong) ScrollMenuViewController *scrollMenuViewController;

@property (nonatomic, weak) IBOutlet UIScrollView *scrollMenuContainer;
@property (nonatomic, weak) IBOutlet UIScrollView *scrollContentContainer;

@end
