//
//  ZHXLoginViewController.m
//  电商项目
//
//  Created by 小新 on 16/6/16.
//  Copyright © 2016年 Mark-zhx. All rights reserved.
//

#import "ZHXLoginView.h"

@interface ZHXLoginView ()

@property (strong, nonatomic) UITextField *phoneText;
@property (strong, nonatomic) UITextField *pwdText;

/// 登录按钮
@property (strong, nonatomic) UIButton *loginBtn;
/// 注册按钮
@property (strong, nonatomic) UIButton *regBtn;

@property (strong, nonatomic) UILabel *lineLabel;

@property (strong, nonatomic) UILabel *backLabel;

@property (strong, nonatomic) UIImageView *image;

@property (strong, nonatomic) UIImageView *image1;

@end

@implementation ZHXLoginView

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        
        [self addSubview:self.lineLabel];
        [self addSubview:self.phoneText];
        [self addSubview:self.backLabel];
        [self addSubview:self.pwdText];
        [self addSubview:self.loginBtn];
        [self addSubview:self.regBtn];
        
        self.backgroundColor = RGB(242, 242, 242);
        
    }
    return self;
}


- (void)layoutSubviews{
    [super layoutSubviews];
    
    [self.lineLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(self.phoneText.mas_top);
        make.height.equalTo(88);
        make.width.equalTo(self.frame.size.width);
        
    }];
    
    [self.phoneText mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.mas_equalTo(self);
        make.size.mas_equalTo(CGSizeMake(self.frame.size.width, 44));
        make.left.mas_equalTo(self);
    }];
    
    [self.pwdText mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.mas_equalTo(self.backLabel.mas_bottom).offset(0);
        make.left.mas_equalTo(self).offset(0);
        make.size.mas_equalTo(CGSizeMake(self.frame.size.width, 44));
        
    }];
    [self.backLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.phoneText.mas_bottom);
        make.left.mas_equalTo(self).offset(30);
        make.size.equalTo(CGSizeMake(315, 1));
        
    }];
    
    
    
    [self.loginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(self.pwdText.mas_bottom).offset(31);
        make.left.equalTo(self.mas_left).offset(22);
        make.right.equalTo(self.right).offset(-22);
        make.height.equalTo(42);
        
    }];
    
    [self.regBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(self.loginBtn.bottom).offset(35);
        make.right.equalTo(self.right).offset(-22);
        
        make.size.equalTo(CGSizeMake(100, 40));
        
    }];
    

    
}




#pragma mark - Attribute

- (UITextField *)phoneText{
    if (!_phoneText) {
        
        _phoneText = [[UITextField alloc]init];
        _phoneText.placeholder = @"请输入手机号码";
        
        _phoneText.leftView = self.image1;
        _phoneText.leftViewMode = UITextFieldViewModeAlways;
        
    }
    return _phoneText;
}
- (UITextField *)pwdText{
    if (!_pwdText) {
        _pwdText = [[UITextField alloc]init];
        _pwdText.placeholder = @"请输入密码";
        _pwdText.secureTextEntry = YES;
        _pwdText.leftView = self.image;
        _pwdText.leftViewMode = UITextFieldViewModeAlways;
        
    }
    return _pwdText;
}
- (UILabel *)backLabel{
    if (!_backLabel) {
        _backLabel = [[UILabel alloc]init];
        _backLabel.backgroundColor = RGB(220, 219, 222);
    }
    return _backLabel;
}
- (UILabel *)lineLabel{
    if (!_lineLabel) {
        _lineLabel = [[UILabel alloc]init];
        _lineLabel.backgroundColor = [UIColor whiteColor];
    }
    return _lineLabel;
}
- (UIButton *)loginBtn{
    if (!_loginBtn) {
        _loginBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        
        [_loginBtn setTitle:@"登录" forState:UIControlStateNormal];
        
        _loginBtn.backgroundColor = RGB(21, 166, 241);
        
        _loginBtn.layer.masksToBounds = YES;
        _loginBtn.layer.cornerRadius = 10;
    }
    return _loginBtn;
}

- (UIButton *)regBtn{
    if (!_regBtn) {
        _regBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        
        [_regBtn setTitle:@"免费注册" forState:UIControlStateNormal];
        [_regBtn setTitleColor:RGB(0, 123, 172) forState:UIControlStateNormal];
        
        
        
    }
    return _regBtn;
}
- (UIImageView *)image{
    if (!_image) {
        _image = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 30, 44)];
    }
    return _image;
}

- (UIImageView *)image1{
    if (!_image1) {
        _image1 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 30, 44)];
    }
    return _image1;
}
@end






