//
//  ZHXLoginViewController.m
//  电商项目
//
//  Created by 小新 on 16/6/16.
//  Copyright © 2016年 Mark-zhx. All rights reserved.
//

#import "ZHXLoginViewController.h"

@interface ZHXLoginViewController ()

@end

@implementation ZHXLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = RGB(242, 242, 242);
    
    ZHXLoginView *zhxView = [[ZHXLoginView alloc]initWithFrame:CGRectMake(0, 95, self.view.frame.size.width, 400)];
    
    [self.view addSubview:zhxView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
