//
//  ViewController.m
//  TTStatusBarDemo
//
//  Created by zhangliangwang on 17/4/6.
//  Copyright © 2017年 zhangliangwang. All rights reserved.
//

//MARK:-相关网页 http://www.jianshu.com/p/63f758796438

#import "ViewController.h"
#import "TTPersonalViewController.h"


#define ScreenWidth [UIScreen mainScreen].bounds.size.width
#define ScreenHeight [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@end

@implementation ViewController

//MARK:-设置导航栏的样式
/*
typedef NS_ENUM(NSInteger, UIStatusBarStyle) {
    UIStatusBarStyleDefault                                     = 0, // Dark content, for use on light backgrounds
    UIStatusBarStyleLightContent     NS_ENUM_AVAILABLE_IOS(7_0) = 1, // Light content, for use on dark backgrounds
    
    UIStatusBarStyleBlackTranslucent NS_ENUM_DEPRECATED_IOS(2_0, 7_0, "Use UIStatusBarStyleLightContent") = 1,
    UIStatusBarStyleBlackOpaque      NS_ENUM_DEPRECATED_IOS(2_0, 7_0, "Use UIStatusBarStyleLightContent") = 2,
} __TVOS_PROHIBITED;
*/
- (UIStatusBarStyle)preferredStatusBarStyle {
    
    return  UIStatusBarStyleLightContent;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    // 改变导航栏的颜色
//    self.navigationController.navigationBar.barTintColor = [UIColor redColor];
    
    // 把状态栏和导航栏的字体变为白色 UIBarStyleDefault为黑色 UIBarStyleBlack为白色
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    /*
    typedef NS_ENUM(NSInteger, UIBarStyle) {
        UIBarStyleDefault          = 0,
        UIBarStyleBlack            = 1,
        
        UIBarStyleBlackOpaque      = 1, // Deprecated. Use UIBarStyleBlack
        UIBarStyleBlackTranslucent = 2, // Deprecated. Use UIBarStyleBlack and set the translucent property to YES
    } __TVOS_PROHIBITED
     */

    // 只改变导航栏的字体颜色
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor blackColor]}];

    // 改变导航栏字体大小
//    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor greenColor],NSFontAttributeName:[UIFont systemFontOfSize:20]}];
    
    // 设置导航栏背景图
//    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@""] forBarMetrics:UIBarMetricsDefault];
    
    // 改变状态栏背景色
    UIView *statusView = [[UIView alloc] initWithFrame:CGRectMake(0, -20, ScreenWidth, 20)];
    statusView.backgroundColor = [UIColor lightGrayColor];
    statusView.tag = 200;
    [self.navigationController.navigationBar addSubview:statusView];

    //导航栏透明处理
    [self.navigationController.navigationBar setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
    self.navigationController.navigationBar.shadowImage = [[UIImage alloc] init];
    
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    // 移除覆盖的statusView
    for (UIView *subView in self.navigationController.navigationBar.subviews) {
        if (subView.tag == 200) {
            [subView removeFromSuperview];
        }
    }
    
    // 只改变导航栏的字体颜色
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    //导航栏非透明处理
    [self.navigationController.navigationBar setBackgroundImage:nil forBarMetrics:UIBarMetricsDefault];
    self.navigationController.navigationBar.shadowImage = nil;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.title = @"ViewControllers";
    
   

}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    TTPersonalViewController *personalCtrl = [[TTPersonalViewController alloc] init];
    [self.navigationController pushViewController:personalCtrl animated:true];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end




















































