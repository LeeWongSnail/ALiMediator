//
//  ALiAppTest.m
//  ALiMediator
//
//  Created by LeeWong on 16/9/7.
//  Copyright © 2016年 LeeWong. All rights reserved.
//

#import "ALiAppTest.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "ViewController.h"

@implementation ALiAppTest

- (void)startTestAppWithParams:(NSDictionary *)aParams
{
    NSInteger type = [[aParams objectForKey:@"des"] integerValue];
    switch (type) {
        case ALiAppTestTypeMain:
            [self gotoTestMainVC:aParams];
            break;
        case ALiAppTestTypeFirst:
            [self gotoFirstVC:aParams];
            break;
        case ALiAppTestTypeSecond:
            [self gotoSecondVC:aParams];
            break;
        case ALiAppTestTypeThird:
            [self gotoThirdVC:aParams];
            break;
            
        default:
            break;
    }
}

- (void)gotoTestMainVC:(NSDictionary *)aParam
{
    ViewController *vc = [[ViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)gotoFirstVC:(NSDictionary *)aParam
{
    FirstViewController *vc = [[FirstViewController alloc] init];
    [self.navigationController presentViewController:vc animated:YES completion:nil];
}

- (void)gotoSecondVC:(NSDictionary *)aParam
{
    SecondViewController *vc = [[SecondViewController alloc] init];
    vc.imageName = aParam[kImageName];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)gotoThirdVC:(NSDictionary *)aParam
{
    ThirdViewController *vc = [[ThirdViewController alloc] init];
    vc.title = aParam[kTitle];
    [self.navigationController presentViewController:vc animated:YES completion:nil];
}


@end
