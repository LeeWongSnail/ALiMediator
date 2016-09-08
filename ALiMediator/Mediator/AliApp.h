//
//  ArtApp.h
//  ArtLive
//
//  Created by LeeWong on 16/6/14.
//  Copyright © 2016年 LeeWong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#define kVcShowType @"kVcShowType" // 控制器出来的类型

typedef NS_ENUM(NSInteger, EArtMediatorShowType) {
    EArtMediatorShowTypePush = 0,     // push出Vc
    EArtMediatorShowTypePresent = 1,  // Present出Vc
    EArtMediatorShowTypePresentNoNav = 2, // Prese出Vc 不用nav 包
    EArtMediatorShowTypeNone = 3,     // 只创建不处理
};


@interface AliApp : NSObject

@property (nonatomic,strong) UINavigationController *navigationController;

@property (nonatomic,strong) UIViewController *viewController;

@end
