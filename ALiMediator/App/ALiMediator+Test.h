//
//  ALiMediator+Test.h
//  ALiMediator
//
//  Created by LeeWong on 16/9/7.
//  Copyright © 2016年 LeeWong. All rights reserved.
//

#import "ALiMediator.h"
#import "ALiConfig.h"

@interface ALiMediator (Test)
/**
 *  跳转到LiveApp组件的某个控制器
 *
 *  @param aType   目标控制器
 *  @param aParams 跳转到目标控制器所需要传递的参数
 */
- (void)startTestApp:(ALiAppTestType)aType params:(NSDictionary *)aParams;
@end
