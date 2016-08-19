//
//  ViewController.m
//  PresentGiftAnimation
//
//  Created by King on 16/8/19.
//  Copyright © 2016年 King. All rights reserved.
//

#import "ViewController.h"
#import "PresentView.h"
#import "GiftModel.h"
#import "AnimOperation.h"
#import "AnimOperationManager.h"
#import "GSPChatMessage.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *ylcButton;
@property (weak, nonatomic) IBOutlet UIButton *zrtButton;
@property (weak, nonatomic) IBOutlet UIButton *latButton;
@property (weak, nonatomic) IBOutlet UIButton *fekButton;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.ylcButton.layer setCornerRadius:5];
    [self.zrtButton.layer setCornerRadius:5];
    [self.latButton.layer setCornerRadius:5];
    [self.fekButton.layer setCornerRadius:5];
}

// 模拟收到礼物消息的回调
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    // IM 消息
    GSPChatMessage *msg = [[GSPChatMessage alloc] init];
    msg.text = @"1个【鲜花】";
    // 模拟 n 个人在送礼物
    int x = arc4random() % 9;
    msg.senderChatID = [NSString stringWithFormat:@"%d",x];
    msg.senderName = [NSString stringWithFormat:@"黄%@",msg.senderChatID];
    NSLog(@"id %@ -------送了1个【鲜花】--------",msg.senderChatID);
    
    // 礼物模型
    GiftModel *giftModel = [[GiftModel alloc] init];
    giftModel.headImage = [UIImage imageNamed:@"luffy"];
    giftModel.name = msg.senderName;
    giftModel.giftImage = [UIImage imageNamed:@"flower"];
    giftModel.giftName = msg.text;
    giftModel.giftCount = 1;
    
    AnimOperationManager *manager = [AnimOperationManager sharedManager];
    manager.parentView = self.view;
    // 用用户唯一标识 msg.senderChatID 存礼物信息,model 传入礼物模型
    [manager animWithUserID:[NSString stringWithFormat:@"%@",msg.senderChatID] model:giftModel finishedBlock:^(BOOL result) {
        
    }];
}

- (IBAction)ylcButtonClick:(id)sender {
    // IM 消息
    GSPChatMessage *msg = [[GSPChatMessage alloc] init];
    msg.text = @"1个【鲜花】";
    msg.senderChatID = @"1";
    msg.senderName = @"叶良辰";
    NSLog(@"%@ -------送了1个【鲜花】--------",msg.senderName);
    
    // 礼物模型
    GiftModel *giftModel = [[GiftModel alloc] init];
    giftModel.headImage = [UIImage imageNamed:@"luffy"];
    giftModel.name = msg.senderName;
    giftModel.giftImage = [UIImage imageNamed:@"flower"];
    giftModel.giftName = msg.text;
    giftModel.giftCount = 1;
    
    AnimOperationManager *manager = [AnimOperationManager sharedManager];
    manager.parentView = self.view;
    // 用用户唯一标识 msg.senderChatID 存礼物信息,model 传入礼物模型
    [manager animWithUserID:[NSString stringWithFormat:@"%@",msg.senderChatID] model:giftModel finishedBlock:^(BOOL result) {
        
    }];

}

- (IBAction)zrtButtonClick:(id)sender {
    // IM 消息
    GSPChatMessage *msg = [[GSPChatMessage alloc] init];
    msg.text = @"1个【鲜花】";
    msg.senderChatID = @"2";
    msg.senderName = @"赵日天";
    NSLog(@"%@ -------送了1个【鲜花】--------",msg.senderName);
    
    // 礼物模型
    GiftModel *giftModel = [[GiftModel alloc] init];
    giftModel.headImage = [UIImage imageNamed:@"luffy"];
    giftModel.name = msg.senderName;
    giftModel.giftImage = [UIImage imageNamed:@"flower"];
    giftModel.giftName = msg.text;
    giftModel.giftCount = 1;
    
    AnimOperationManager *manager = [AnimOperationManager sharedManager];
    manager.parentView = self.view;
    // 用用户唯一标识 msg.senderChatID 存礼物信息,model 传入礼物模型
    [manager animWithUserID:[NSString stringWithFormat:@"%@",msg.senderChatID] model:giftModel finishedBlock:^(BOOL result) {
        
    }];

}

- (IBAction)latButtonClick:(id)sender {
    // IM 消息
    GSPChatMessage *msg = [[GSPChatMessage alloc] init];
    msg.text = @"1个【鲜花】";
    msg.senderChatID = @"3";
    msg.senderName = @"龙傲天";
    NSLog(@"%@ -------送了1个【鲜花】--------",msg.senderName);
    
    // 礼物模型
    GiftModel *giftModel = [[GiftModel alloc] init];
    giftModel.headImage = [UIImage imageNamed:@"luffy"];
    giftModel.name = msg.senderName;
    giftModel.giftImage = [UIImage imageNamed:@"flower"];
    giftModel.giftName = msg.text;
    giftModel.giftCount = 1;
    
    AnimOperationManager *manager = [AnimOperationManager sharedManager];
    manager.parentView = self.view;
    // 用用户唯一标识 msg.senderChatID 存礼物信息,model 传入礼物模型
    [manager animWithUserID:[NSString stringWithFormat:@"%@",msg.senderChatID] model:giftModel finishedBlock:^(BOOL result) {
        
    }];

}

- (IBAction)fekButtonClick:(id)sender {
    // IM 消息
    GSPChatMessage *msg = [[GSPChatMessage alloc] init];
    msg.text = @"1个【鲜花】";
    msg.senderChatID = @"4";
    msg.senderName = @"福尔康";
    NSLog(@"%@ -------送了1个【鲜花】--------",msg.senderName);
    
    // 礼物模型
    GiftModel *giftModel = [[GiftModel alloc] init];
    giftModel.headImage = [UIImage imageNamed:@"luffy"];
    giftModel.name = msg.senderName;
    giftModel.giftImage = [UIImage imageNamed:@"flower"];
    giftModel.giftName = msg.text;
    giftModel.giftCount = 1;
    
    AnimOperationManager *manager = [AnimOperationManager sharedManager];
    manager.parentView = self.view;
    // 用用户唯一标识 msg.senderChatID 存礼物信息,model 传入礼物模型
    [manager animWithUserID:[NSString stringWithFormat:@"%@",msg.senderChatID] model:giftModel finishedBlock:^(BOOL result) {
        
    }];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
