//
//  MWEGradeView.m
//  CustomAlertView
//
//  Created by Yesi on 16/4/6.
//  Copyright © 2016年 Yesi. All rights reserved.
//

#import "MWEGradeView.h"

@interface MWEGradeView()
@property (weak, nonatomic) IBOutlet UIView *topSeperator;

@property (weak, nonatomic) IBOutlet UIView *bottomSeperator;
@property (weak, nonatomic) IBOutlet UIView *containerView;

@end
@implementation MWEGradeView



- (void)awakeFromNib{
    [super awakeFromNib];
//    self.topSeperator.backgroundColor = [UIColor colorWithRGB:0x191919];
//    self.bottomSeperator.backgroundColor = [UIColor colorWithRGB:0x191919];
    self.containerView.layer.cornerRadius = 5;
    self.containerView.layer.masksToBounds  = YES;
    
    self.containerView.alpha = 0.0;
    [UIView animateWithDuration:0.5 animations:^{
        self.containerView.alpha = 1.0;
    } completion:nil];
}
- (IBAction)laterClick:(id)sender {
    if (self.topClick) {
        self.topClick();
    }
    [self dismiss];
}
- (IBAction)ignore:(id)sender {
    if ( self.midClick) {
        self.midClick();
    }
    [self dismiss];
}
- (IBAction)rateNow:(id)sender {
    if (self.bottomClick) {
        self.bottomClick();
    }
    [self dismiss];
}
- (void)dismiss{
    [UIView animateWithDuration:0.5 animations:^{
        self.containerView.alpha = 0.0;
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
}

@end
