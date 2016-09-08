//
//  SecondViewController.m
//  ALiMediator
//
//  Created by LeeWong on 16/9/7.
//  Copyright © 2016年 LeeWong. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UIImageView *imageV = [[UIImageView alloc] init];
    imageV.image = [UIImage imageNamed:self.imageName];
    imageV.frame = CGRectMake(0, 0, 100, 100);
    imageV.center = self.view.center;
    [self.view addSubview:imageV];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"返回" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn.frame = CGRectMake(150, [UIScreen mainScreen].bounds.size.height-100, 80, 30);
    btn.layer.cornerRadius = 5;
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(dismissViewControllerAnimated:completion:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
