//
//  ALiMediator+Test.m
//  ALiMediator
//
//  Created by LeeWong on 16/9/7.
//  Copyright © 2016年 LeeWong. All rights reserved.
//

#import "ALiMediator+Test.h"
NSString * const kMediatorTargetTest = @"ALiAppTest";

NSString * const kMediatorArtTestPopView = @"startTestAppWithParams";
@implementation ALiMediator (Test)

- (void)startTestApp:(ALiAppTestType)aType params:(NSDictionary *)aParams
{
    [self performTarget:kMediatorTargetTest action:kMediatorArtTestPopView params:[self handleParam:aParams type:aType]];
}
@end
