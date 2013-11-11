//
//  FBViewController.m
//  FBGlowLabelDemo
//
//  Created by Lyo Kato on 2013/11/11.
//  Copyright (c) 2013年 OCTUDIO. All rights reserved.
//

#import "FBViewController.h"
#import <FBGlowLabel/FBGlowLabel.h>

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)(((rgbValue) & 0xFF0000) >> 16))/255.0 green:((float)(((rgbValue) & 0xFF00) >> 8))/255.0 blue:((float)((rgbValue) & 0xFF))/255.0 alpha:1.0]

#define kInitialText @"Real Glow"

@interface FBViewController () <UITextFieldDelegate>
@property (nonatomic) FBGlowLabel *label;
@property (nonatomic) UITextField *field;
@end

@implementation FBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.blackColor;
	[self setupLabel];
    [self setupTextField];
}

- (void)setupLabel
{
    CGRect frame = CGRectMake(10, 100, 300, 100);
    FBGlowLabel *v = [[FBGlowLabel alloc] initWithFrame:frame];
    v.text = kInitialText;
    v.textAlignment = NSTextAlignmentCenter;
    v.clipsToBounds = YES;
    //v.lineWidth = 1;
    v.backgroundColor = [UIColor clearColor];
    v.font = [UIFont fontWithName:@"Helvetica-Bold" size:40];
    v.alpha = 1.0;
    v.glowSize = 20;
    v.innerGlowSize = 4;
    v.textColor = UIColorFromRGB(0xffffff);
    v.glowColor = UIColorFromRGB(0x00ffff);
    v.innerGlowColor = UIColorFromRGB(0x00ffff);
    self.label = v;
    [self.view addSubview:v];
}

- (void)setupTextField
{
    CGRect frame = CGRectMake(10, 20, 300, 50);
    UITextField *v = [[UITextField alloc] initWithFrame:frame];
    v.delegate = self;
    v.textColor = UIColorFromRGB(0x000000);
    v.placeholder = @"INPUT HERE";
    //v.text = kInitialText;
    v.returnKeyType = UIReturnKeyDone;
    v.font = [UIFont fontWithName:@"Helvetica-Bold" size:20];
    v.backgroundColor = UIColor.whiteColor;
    v.textAlignment = NSTextAlignmentCenter;
    v.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    self.field = v;
    [self.view addSubview:v];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITextFieldDelegate

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.field resignFirstResponder];
    self.label.text = self.field.text;
    [self.label setNeedsDisplay];
    return YES;
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    self.label.text = [self.field.text stringByReplacingCharactersInRange:range
                                                               withString:string];
    [self.label setNeedsDisplay];
    return YES;
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    return YES;
}

@end
