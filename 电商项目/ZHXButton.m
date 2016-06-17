//
//  ZHXButton.m
//  电商项目
//
//  Created by 小新 on 16/6/16.
//  Copyright © 2016年 Mark-zhx. All rights reserved.
//

#import "ZHXButton.h"

static CGFloat const kScal = 0.7;

@implementation ZHXButton

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        // 设置重写按钮的基本配置
        // 图片的填充方式
        self.imageView.contentMode = UIViewContentModeBottom;
        
        // 设置图片的背景色
        self.imageView.backgroundColor = [UIColor clearColor];
        // 文字标题的对齐方式
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        
        self.titleLabel.font = [UIFont systemFontOfSize:11.0];
        
    }
    return self;
    
}
// 设置图文按钮上图片的区域
- (CGRect)imageRectForContentRect:(CGRect)contentRect{
    // 参数contentRect:创建按钮的时候给的那个区域
    
    // 需要返回的区域是按钮上图片的区域
    CGFloat x = contentRect.origin.x;
    CGFloat y = contentRect.origin.y;
    CGFloat width = contentRect.size.width;
    CGFloat height = contentRect.size.height * kScal;
    // 将图片区域返回
    return CGRectMake(x, y, width, height);
}

// 设置图文按钮上的文字区域
- (CGRect)titleRectForContentRect:(CGRect)contentRect{
    
    CGFloat x = contentRect.origin.x;
    CGFloat y = contentRect.size.height * kScal;
    CGFloat width = contentRect.size.width;
    CGFloat height = contentRect.size.height * (1 - kScal);
    // 将图片区域返回
    return CGRectMake(x, y, width, height);
    
}


@end
