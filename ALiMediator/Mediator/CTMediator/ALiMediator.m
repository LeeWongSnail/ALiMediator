//
//  ArtMediator.m
//  ArtLive
//
//  Created by LeeWong on 16/6/20.
//  Copyright © 2016年 LeeWong. All rights reserved.
//

#import "ALiMediator.h"


@implementation ALiMediator

+ (instancetype)sharedInstance
{
    static ALiMediator *mediator;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mediator = [[[self class] alloc] init];
    });
    return mediator;
}

- (NSDictionary *)handleParam:(NSDictionary *)aParam type:(NSUInteger)aType
{
    NSMutableDictionary *param = [NSMutableDictionary dictionaryWithDictionary:aParam];
    [param setValue:@(aType) forKey:@"des"];
    return [param copy];
}

@end
