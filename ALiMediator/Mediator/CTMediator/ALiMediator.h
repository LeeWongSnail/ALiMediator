//
//  ArtMediator.h
//  ArtLive
//
//  Created by LeeWong on 16/6/20.
//  Copyright © 2016年 LeeWong. All rights reserved.
//

#import "CTMediator.h"

@interface ALiMediator : CTMediator

+ (instancetype)sharedInstance;


- (NSDictionary *)handleParam:(NSDictionary *)aParam type:(NSUInteger)aType;

@end
