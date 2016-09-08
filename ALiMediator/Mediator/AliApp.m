//
//  ArtApp.m
//  ArtLive
//
//  Created by LeeWong on 16/6/14.
//  Copyright © 2016年 LeeWong. All rights reserved.
//

#import "AliApp.h"

@implementation AliApp

- (UINavigationController *)navigationController
{
    //rootViewController需要是TabBarController,排除正在显示FirstPage的情况
    UIViewController *rootViewContoller = [UIApplication sharedApplication].delegate.window.rootViewController;
    if (!rootViewContoller || (![rootViewContoller isKindOfClass:[UITabBarController class]] && ![rootViewContoller isKindOfClass:[UINavigationController class]])) {
        return nil;
    }
    
    //当前显示哪个tab页
    UINavigationController *rootNavController = nil;
    if([rootViewContoller isKindOfClass:[UITabBarController class]]){
        UIViewController*vc = (UINavigationController *) [(UITabBarController*)rootViewContoller selectedViewController];
        rootNavController = [self navigationForViewController:vc];
        
    }else{
        rootNavController = [self navigationForViewController:rootViewContoller];
    }
    
    if (!rootNavController) {
        return nil;
    }
    
    return rootNavController;
}

- (UINavigationController *)navigationForViewController:(UIViewController *)vc{
    
    UINavigationController *nav = nil;
    if ([vc isKindOfClass:[UINavigationController class]]) {
        nav = (UINavigationController *)vc;
    }
    
    UIViewController *pvc = vc.presentedViewController;
    while (pvc != nil) {
        
        if ([pvc isKindOfClass:[UINavigationController class]]) {
            nav = (UINavigationController *)pvc;
        }
        pvc = pvc.presentedViewController;
    }
    
    return nav;
}

- (UIViewController *)viewController
{
    return self.navigationController.visibleViewController;
}


@end
