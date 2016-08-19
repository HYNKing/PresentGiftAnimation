//
//  ShakeLabel.h
//  PresentGiftAnimation
//
//  Created by King on 16/8/19.
//  Copyright © 2016年 King. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShakeLabel : UILabel
// 动画时间
@property (nonatomic,assign) NSTimeInterval duration;
// 描边颜色
@property (nonatomic,strong) UIColor *borderColor;

- (void)startAnimWithDuration:(NSTimeInterval)duration;
@end
