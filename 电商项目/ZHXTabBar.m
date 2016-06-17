//
//  ZHXTabBar.m
//  电商项目
//
//  Created by 小新 on 16/6/16.
//  Copyright © 2016年 Mark-zhx. All rights reserved.
//

#import "ZHXTabBar.h"

static NSInteger const kCount = 4;
static CGFloat const kHeight = 49;

#define WIDTH self.frame.size.width
@interface ZHXTabBar ()

@property (strong, nonatomic) ZHXButton *zhxBtn1;

@end

@implementation ZHXTabBar

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        
        [self methodForView];
        self.backgroundColor = RGB(255, 255, 255);
        
    }
    return self;
}

- (void)methodForView{
    
    // 按钮宽度
    CGFloat kWidth = WIDTH / kCount;
    
    for (int i = 0; i < kCount; i++) {
        
        NSDictionary *dic = ARRAY[i];
        
        ZHXButton *zhxBtn = [ZHXButton buttonWithType:UIButtonTypeCustom];

        [zhxBtn setFrame:CGRectMake(kWidth * i, 0, kWidth, kHeight)];
        
        [zhxBtn setImage:[UIImage imageNamed:dic[@"normal"]] forState:UIControlStateNormal];
        
        [zhxBtn setImage:[UIImage imageNamed:dic[@"selected"]] forState:UIControlStateSelected];
        
        [zhxBtn setTitle:dic[@"title"] forState:UIControlStateNormal];
        [zhxBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [zhxBtn setTitleColor:RGB(0, 157, 241) forState:UIControlStateSelected];
        
        
        [zhxBtn addTarget:self action:@selector(changeItem:) forControlEvents:UIControlEventTouchUpInside];
        
        if (i == 0) {
            zhxBtn.selected = YES;
            self.zhxBtn1 = zhxBtn;
        }
        
        zhxBtn.tag = i+1;
        
        [self addSubview:zhxBtn];
    }
}

- (void)changeItem:(ZHXButton *)btn{
    
    if (self.zhxBtn1 == btn) {
        return;
    }
    
    btn.selected = YES;
    self.zhxBtn1.selected = NO;
    
    self.zhxBtn1 = btn;
    
    if ([self.delegate respondsToSelector:@selector(sendValue:withType:)]) {
        
        [self.delegate sendValue:self withType:btn.tag];
    }
}


@end
