//
//  AnimOperationManager.h
//  PresentGiftAnimation
//
//  Created by King on 16/8/19.
//  Copyright © 2016年 King. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GiftModel.h"

@interface AnimOperationManager : NSObject
+ (instancetype)sharedManager;
@property (nonatomic,strong) UIView *parentView;
@property (nonatomic,strong) GiftModel *model;
/// 动画操作 : 需要UserID和回调
- (void)animWithUserID:(NSString *)userID model:(GiftModel *)model finishedBlock:(void(^)(BOOL result))finishedBlock;

/// 取消上一次的动画操作
- (void)cancelOperationWithLastUserID:(NSString *)userID;
@end
