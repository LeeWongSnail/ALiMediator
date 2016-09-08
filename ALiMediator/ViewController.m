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


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        [[ALiMediator sharedInstance] startTestApp:ALiAppTestTypeFirst params:nil];
    } else if (indexPath.row == 1) {
        [[ALiMediator sharedInstance] startTestApp:ALiAppTestTypeSecond params:@{kImageName:@"shengcheng"}];
    } else if (indexPath.row == 2) {
        [[ALiMediator sharedInstance] startTestApp:ALiAppTestTypeThird params:@{kNav:self.navigationController}];
    }
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
