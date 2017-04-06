//
//  TTPersonalViewController.m
//  TTStatusBarDemo
//
//  Created by zhangliangwang on 17/4/6.
//  Copyright © 2017年 zhangliangwang. All rights reserved.
//

#import "TTPersonalViewController.h"
#import "TTAboutUsViewController.h"

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height


@interface TTPersonalViewController ()

@end

@implementation TTPersonalViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    // 改变导航栏的颜色
    self.navigationController.navigationBar.barTintColor = [UIColor blackColor];
    
    // 把状态栏和导航栏的字体变为白色
//    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    
    // 只改变导航栏的字体颜色
//    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor yellowColor]}];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"Personal";
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    TTAboutUsViewController *aboutCtrl = [[TTAboutUsViewController alloc] init];
    [self.navigationController pushViewController:aboutCtrl animated:true];
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
