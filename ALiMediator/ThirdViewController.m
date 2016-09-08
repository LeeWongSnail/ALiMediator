//
//  ThirdViewController.m
//  ALiMediator
//
//  Created by LeeWong on 16/9/7.
//  Copyright © 2016年 LeeWong. All rights reserved.
//

#import "ThirdViewController.h"
#import "ALiMediator+Test.h"
#import "ALiAppTest.h"
@interface ThirdViewController ()



@end

@implementation ThirdViewController

- (void)configUI
{
    self.view.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.8];
    
    UIView *contentView = [[UIView alloc] init];
    contentView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:contentView];
    contentView.frame = CGRectMake(0, 0, 250, 250);
    contentView.center = self.view.center;
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"需要跳转" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor greenColor]];
    [contentView addSubview:btn];
    btn.frame = CGRectMake(85, 110, 80, 40);
    btn.layer.cornerRadius = 10;
    [btn addTarget:self action:@selector(handleJump) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)]];
}


- (void)handleTap:(UIGestureRecognizer *)gesture
{
    if (gesture.state == UIGestureRecognizerStateEnded) {
        [ALiAppTest dismissPopView];
    }
}

- (void)handleJump
{
    [[ALiMediator sharedInstance] startTestApp:ALiAppTestTypeMain params:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configUI];
}

- (void)back
{
    if (self.navigationController.viewControllers.count > 1)
    {
        [self.navigationController popViewControllerAnimated:YES];
    }
    else
    {
        [self.navigationController dismissViewControllerAnimated:YES completion:^{
            
        }];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
