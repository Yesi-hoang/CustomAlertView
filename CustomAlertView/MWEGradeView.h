//
//  MWEGradeView.h
//  CustomAlertView
//
//  Created by Yesi on 16/4/6.
//  Copyright © 2016年 Yesi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MWEGradeView : UIView

// 3 click block
@property (nonatomic, copy) void(^doHouseWorkBlock)(NSDate *date, NSString *kind);
/** click 1 */
@property (nonatomic, copy) void(^topClick)();

@property (nonatomic, copy) void(^midClick)();

@property (nonatomic, copy) void(^bottomClick)();


@end
