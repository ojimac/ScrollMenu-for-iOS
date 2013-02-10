//
//  ScrollMenuViewController.h
//  ScrollMenu-for-iOS
//
//  Created by ojimac on 2013/02/09.
//  Copyright (c) 2013年 ojimac. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ScrollMenuViewDelegate;

@interface ScrollMenuViewController : UIViewController <
    UIScrollViewDelegate
>

@property (nonatomic, strong) UIView *view;

@property (nonatomic, weak) id <ScrollMenuViewDelegate> delegate;

@property NSInteger movePointX;

@end

@protocol ScrollMenuViewDelegate <NSObject>

- (void)menuDidTap:(UILabel *)menu tapPoint:(CGPoint)point;

@end
