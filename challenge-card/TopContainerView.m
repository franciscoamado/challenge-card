//
//  TopContainerView.m
//  challenge-card
//
//  Created by franciscoamado on 14/03/16.
//  Copyright © 2016 franciscoamado. All rights reserved.
//

#import "TopContainerView.h"
#import "UIView+CardsAnimation.h"
#import "FrontCardView.h"
#import "BackCardView.h"

@interface TopContainerView ()

@property (weak, nonatomic) IBOutlet UIView *templateView;
@property (strong, nonatomic) FrontCardView *frontView;
@property (strong, nonatomic) BackCardView *backView;

@end

@implementation TopContainerView

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)layoutSubviews
{
    [super layoutSubviews];

    self.frontView = [[FrontCardView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, self.templateView.frame.size.width, self.templateView.frame.size.height)];
    self.backView = [[BackCardView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, self.templateView.frame.size.width, self.templateView.frame.size.height)];
//    [self.backView.backgroundView setBackgroundColor:[UIColor redColor]];

    [self.templateView addSubview:self.backView];
    [self.templateView addSubview:self.frontView];
}

- (void)flipToFrontView:(BOOL)flipToFront
{
    if (flipToFront) {
        [UIView flipFromView:self.backView toView:self.frontView];
    }
    else {
        [UIView flipFromView:self.frontView toView:self.backView];
    }
}

@end