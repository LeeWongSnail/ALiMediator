//
//  ViewController.m
//  ALiMediator
//
//  Created by LeeWong on 16/9/7.
//  Copyright © 2016年 LeeWong. All rights reserved.
//

#import "ViewController.h"
#import "ALiMediator+Test.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)FistClick:(id)sender {
    [[ALiMediator sharedInstance] startTestApp:ALiAppTestTypeFirst params:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
