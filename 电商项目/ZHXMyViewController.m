//
//  MyViewController.m
//  电商项目
//
//  Created by 小新 on 16/6/16.
//  Copyright © 2016年 Mark-zhx. All rights reserved.
//

#import "ZHXMyViewController.h"

@interface ZHXMyViewController ()
// 登录按钮
@property (strong, nonatomic) UIButton *logBtn;
// 注册按钮
@property (strong, nonatomic) UIButton *regBtn;

@end

@implementation ZHXMyViewController
- (void)viewDidLoad{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    
    
    [self.view addSubview:self.logBtn];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self.view endEditing:YES];
}

// 界面跳转方法
- (void)loginMethod{
    
    ZHXLoginViewController *lVC = [[ZHXLoginViewController alloc]init];
    
    lVC.hidesBottomBarWhenPushed = YES;

    [self.navigationController pushViewController:lVC animated:YES];

    
}

#pragma mark - Attribute
- (UIButton *)logBtn{
    if (!_logBtn) {
        _logBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_logBtn setTitle:@"去登录" forState:UIControlStateNormal];
        
        [_logBtn setFrame:CGRectMake(0, 0, 100, 40)];
        _logBtn.backgroundColor = [UIColor orangeColor];
        _logBtn.center = self.view.center;
        // 按钮点击事件
        [_logBtn addTarget:self action:@selector(loginMethod) forControlEvents:UIControlEventTouchUpInside];
    }
    return _logBtn;
}
@end





