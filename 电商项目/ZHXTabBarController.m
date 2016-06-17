//
//  ZHXTabBarController.m
//  电商项目
//
//  Created by 小新 on 16/6/15.
//  Copyright © 2016年 Mark-zhx. All rights reserved.
//

#import "ZHXTabBarController.h"

@interface ZHXTabBarController ()<ZHXTabBarDelegate>


@end

@implementation ZHXTabBarController
- (void)viewDidLoad{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    [self buildViewControllerForBase];
    
   
    
}

#pragma mark - CustomMethod

- (void)buildViewControllerForBase{
    
    NSMutableArray *vcs = [NSMutableArray array];
    
    for (NSInteger i = 0; i < ARRAY.count; i++) {
        
        NSDictionary *dic = ARRAY[i];
        
        Class cl = NSClassFromString(dic[@"viewController"]);
        
        UIViewController *vc = [[cl alloc]init];
        
        vc.title = dic[@"title"];
        
        ZHXNavigationController *nav = [[ZHXNavigationController alloc]initWithRootViewController:vc];
        
        [vcs addObject:nav];
        
    }
    self.viewControllers = vcs;
     [self.tabBar addSubview:self.zhxTabBar];
}

#pragma mark - Attribute

- (ZHXTabBar *)zhxTabBar{
    if (!_zhxTabBar) {
        _zhxTabBar = [[ZHXTabBar alloc]initWithFrame:CGRectMake(0, 0, self.tabBar.bounds.size.width, self.tabBar.bounds.size.height)];
        
        _zhxTabBar.delegate = self;
        
    }
    return _zhxTabBar;
}

- (void)sendValue:(ZHXTabBar *)zhxTabBar withType:(ButtonType)type{
    
    self.selectedIndex = type - 1;
}

@end









