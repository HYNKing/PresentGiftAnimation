//
//  GiftModel.h
//  PresentGiftAnimation
//
//  Created by King on 16/8/19.
//  Copyright © 2016年 King. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface GiftModel : NSObject
@property (nonatomic,strong) UIImage *headImage; // 头像
@property (nonatomic,strong) UIImage *giftImage; // 礼物
@property (nonatomic,copy) NSString *name; // 送礼物者
@property (nonatomic,copy) NSString *giftName; // 礼物名称
@property (nonatomic,assign) NSInteger giftCount; // 礼物个数
@end
