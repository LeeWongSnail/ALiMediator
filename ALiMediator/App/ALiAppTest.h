//
//  ALiAppTest.h
//  ALiMediator
//
//  Created by LeeWong on 16/9/7.
//  Copyright © 2016年 LeeWong. All rights reserved.
//

#import "AliApp.h"
#import "ALiConfig.h"

@interface ALiAppTest : AliApp

/**
 *  跳转到指定的控制器
 *
 *  @param aParams 参数：注意此参数必须包含要跳到控制器的type：(枚举)，以及跳转所需的参数
 */
- (void)startTestAppWithParams:(NSDictionary *)aParams;


+ (void)dismissPopView;
@end
