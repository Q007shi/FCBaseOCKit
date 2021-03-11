//
//  FCViewController.m
//  FCBaseOCKit
//
//  Created by 2585299617@qq.com on 03/03/2021.
//  Copyright (c) 2021 2585299617@qq.com. All rights reserved.
//

#import "FCViewController.h"
#import "FCGradientCornerView.h"

@interface FCViewController ()

@end

@implementation FCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.redColor;
    
    FCGradientCornerView *view = [[FCGradientCornerView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    view.backgroundColor = UIColor.lightGrayColor;
    [self.view addSubview:view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
