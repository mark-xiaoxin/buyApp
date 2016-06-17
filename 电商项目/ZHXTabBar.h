//
//  ZHXTabBar.h
//  电商项目
//
//  Created by 小新 on 16/6/16.
//  Copyright © 2016年 Mark-zhx. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef NS_ENUM(NSInteger,ButtonType) {
    
    ButtonTypeSell = 1,
    ButtonTypeCategory,
    ButtonTypeMy,
    ButtonTypeShop
    
};

@class ZHXTabBar;

@protocol ZHXTabBarDelegate <NSObject>

- (void)sendValue:(ZHXTabBar *)zhxTabBar withType:(ButtonType)type;

@end

@interface ZHXTabBar : UIView

@property (strong, nonatomic) id<ZHXTabBarDelegate> delegate;


@end
