//
//  GSPChatMessage.h
//  PresentGiftAnimation
//
//  Created by King on 16/8/19.
//  Copyright © 2016年 King. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GSPChatMessage : NSObject
@property (nonatomic,retain) NSString *senderName;
@property (nonatomic,retain) NSString *text;
@property (nonatomic,retain) NSString *senderChatID;
@end
