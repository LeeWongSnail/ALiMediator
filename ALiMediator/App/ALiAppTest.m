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

static UIWindow *AlertView;

@interface ALiAppTest () <UIAlertViewDelegate>

@property (nonatomic, strong) void (^checkBlock)();

@end

@implementation ALiAppTest

- (void)startTestAppWithParams:(NSDictionary *)aParams
{
    NSInteger type = [[aParams objectForKey:@"des"] integerValue];
    switch (type) {
        case ALiAppTestTypeMain:
            [self gotoMainVC:aParams];
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
        case ALiAppTestTypeAlertView:
            [self popAlertView:aParams];
            break;
        default:
            break;
    }
}

- (void)gotoMainVC:(NSDictionary *)aParam
{
    ViewController *vc = [[ViewController alloc] init];
    
    [self.navigationController pushViewController:vc animated:YES];
}


- (void)gotoFirstVC:(NSDictionary *)aParam
{
    FirstViewController *vc = [[FirstViewController alloc] init];

    [self.navigationController pushViewController:vc animated:YES];
}

- (void)gotoSecondVC:(NSDictionary *)aParam
{
    SecondViewController *vc = [[SecondViewController alloc] init];
    vc.imageName = aParam[kImageName];
    [self.navigationController presentViewController:vc animated:YES completion:nil];
}

- (void)gotoThirdVC:(NSDictionary *)aParam
{
    UINavigationController *nav = aParam[kNav];
    
    ThirdViewController *vc = [[ThirdViewController alloc] init];
    vc.navigationController = nav;
    
    UIWindow *window = [[UIWindow alloc] initWithFrame:(CGRect) {{0.f, 0.f}, [[UIScreen mainScreen] bounds].size}];
    window.backgroundColor = [UIColor clearColor];
    window.windowLevel = UIWindowLevelNormal;
    window.alpha = 1.;
    window.hidden = NO;
    window.rootViewController = vc;
    vc.view.frame = window.bounds;
    AlertView = window;
}


+ (void)dismissPopView
{
    AlertView.hidden = YES;
    [AlertView.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    [AlertView removeFromSuperview];
    AlertView = nil;
}

- (void)popAlertView:(NSDictionary *)aParam
{
    NSString *title = aParam[kTitle];
    NSString *msg = aParam[kMessage];
    self.checkBlock = aParam[kCheckBlock];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:msg delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    [alert show];
}


- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 1 && self.checkBlock) {
        self.checkBlock();
    }
}


@end
