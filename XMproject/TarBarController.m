//
//  ViewController.m
//  CustomTabBar
//
//  Created by zhangshuai on 15/11/4.
//  Copyright © 2015年 zhangshuai. All rights reserved.
//

#import "TarBarController.h"

#import "HomeViewController.h"
#import "SecondViewController.h"
#import "MiddleViewController.h"
#import "ThirdViewController.h"
#import "FourViewController.h"

@interface TarBarController ()
{
    UIImageView *imageView;
}
@end

@implementation TarBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    HomeViewController *home = [[HomeViewController alloc] init];
    home.tabBarItem.title = @"首页";
    home.tabBarItem.image = [UIImage imageNamed:@"tabbar_company_home"];
    [home.tabBarItem setSelectedImage:[UIImage imageNamed:@"tabbar_company_home_select"]];
    
    SecondViewController *second = [[SecondViewController alloc] init];
    second.tabBarItem.title = @"动态";
    second.tabBarItem.image = [UIImage imageNamed:@"tabbar_dynamic"];
    [second.tabBarItem setSelectedImage:[UIImage imageNamed:@"tabbar_dynamic_selected"]];
    
    MiddleViewController *middle = [[MiddleViewController alloc] init];
    [self addCenterButtonWithImage:[UIImage imageNamed:@"middleImage"] highlightImage:nil];
    
    ThirdViewController *third = [[ThirdViewController alloc] init];
    third.tabBarItem.title = @"广场";
    third.tabBarItem.image = [UIImage imageNamed:@"tabbar_position_oringin"];
    [third.tabBarItem setSelectedImage:[UIImage imageNamed:@"tabbar_position_selected"]];
    
    FourViewController *four = [[FourViewController alloc] init];
    four.tabBarItem.title = @"我的";
    four.tabBarItem.image = [UIImage imageNamed:@"tabbar_mine_oringin"];
    [four.tabBarItem setSelectedImage:[UIImage imageNamed:@"tabbar_mine_selected"]];
    
    self.viewControllers = @[home,second,middle,third,four];
}

//添加中间按钮
- (void)addCenterButtonWithImage:(UIImage *)buttonImage highlightImage:(UIImage *)highlightImage
{
    UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleTopMargin;
    button.frame = CGRectMake(0.0, 0.0, buttonImage.size.width, buttonImage.size.height);
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    [button setBackgroundImage:buttonImage forState:UIControlStateNormal];
    [button setBackgroundImage:highlightImage forState:UIControlStateHighlighted];
    
    CGFloat heightDifference = buttonImage.size.height - self.tabBar.frame.size.height;
    if (heightDifference < 0)
        button.center = self.tabBar.center;
    else
    {
        CGPoint center = self.tabBar.center;
        center.y = center.y - heightDifference/2.0;
        button.center = center;
    }
    
    [self.view addSubview:button];
}

- (void)buttonClick
{
    NSLog(@"点击中间按钮");
    
}
// 应用程序接收到内存警告的时候就会调用
// 一般在该方法中释放掉不需要的内存
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
