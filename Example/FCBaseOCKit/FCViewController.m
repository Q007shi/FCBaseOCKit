//
//  FCViewController.m
//  FCBaseOCKit
//
//  Created by 2585299617@qq.com on 03/03/2021.
//  Copyright (c) 2021 2585299617@qq.com. All rights reserved.
//

#import "FCViewController.h"
#import "FCGradientCornerView.h"
#import "FCGradientCornerButton.h"

@interface FCViewController (){
    FCGradientCornerButton *view;
}

@end

@implementation FCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.redColor;
    
    view = [[FCGradientCornerButton alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    view.backgroundColor = UIColor.clearColor;
    
    FCGradientModel *gradientM = FCGradientModel.new;
    gradientM.startPoint = CGPointMake(0, 0);
    gradientM.endPoint = CGPointMake(1, 1);
    FCGradientContentModel *cm1 = FCGradientContentModel.new;
    cm1.location = 0;
    cm1.color = UIColor.orangeColor;
    FCGradientContentModel *cm2 = FCGradientContentModel.new;
    cm2.location = 1;
    cm2.color = UIColor.blueColor;
    
    [gradientM.gradientContents addObject:cm1];
    [gradientM.gradientContents addObject:cm2];
    view.fc_gradientM = gradientM;
    view.fc_cornerRadii = FCCornerRadiiMake(10, 15, 20, 25);
    
    [self.view addSubview:view];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    view.frame = CGRectMake(100, 100, 200, 200);
    FCGradientModel *gradientM = FCGradientModel.new;
    gradientM.startPoint = CGPointMake(0, 0);
    gradientM.endPoint = CGPointMake(1, 1);
    FCGradientContentModel *cm1 = FCGradientContentModel.new;
    cm1.location = 0;
    cm1.color = UIColor.redColor;
    FCGradientContentModel *cm2 = FCGradientContentModel.new;
    cm2.location = 1;
    cm2.color = UIColor.blueColor;
    
    [gradientM.gradientContents addObject:cm1];
    [gradientM.gradientContents addObject:cm2];
    view.fc_gradientM = gradientM;
    view.fc_cornerRadii = FCCornerRadiiMake(10, 15, 20, 25);
}

@end
