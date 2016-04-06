//
//  ViewController.m
//  CustomAlertView
//
//  Created by Yesi on 16/4/6.
//  Copyright © 2016年 Yesi. All rights reserved.
//

#import "ViewController.h"
#import "MWEGradeView.h"
@interface ViewController ()

/** BUTTONS */
@property (nonatomic, strong) NSArray *buttons;

@end

@implementation ViewController

- (NSArray *)buttons{
    if (!_buttons) {
        _buttons = [NSArray array];
    }
    return _buttons;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    MWEGradeView *grade = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([MWEGradeView class]) owner:nil options:nil] lastObject];
    
    grade.frame = self.view.bounds;
    
}
- (IBAction)greenClick:(id)sender {
    MWEGradeView *grade = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([MWEGradeView class]) owner:nil options:nil] lastObject];
    
    grade.frame = self.view.bounds;
    grade.topClick = ^(){
        NSLog(@"Top Clicked");
    };
    grade.midClick = ^(){
        NSLog(@"Mid Clicked");
    };
    grade.bottomClick = ^(){
        NSLog(@"Bottom Clicked");
    };
    [self.view addSubview:grade];
}
//#define MESSAGE_MIN_LINE_COUNT 3
//#define MESSAGE_MAX_LINE_COUNT 5
//#define GAP 10
//#define CANCEL_BUTTON_PADDING_TOP 0
//#define CONTENT_PADDING_LEFT 0
//#define CONTENT_PADDING_TOP 20
//#define CONTENT_PADDING_BOTTOM 10
//#define BUTTON_HEIGHT 44
//#define CONTAINER_WIDTH ((MIN(UIScreen.mainScreen.bounds.size.height, UIScreen.mainScreen.bounds.size.width) > 320) ? 270 : 220)
@end
