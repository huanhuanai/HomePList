//
//  HHACircleViewController.m
//  Homepwner
//
//  Created by 李欢 on 2021/2/18.
//  Copyright © 2021 huan. All rights reserved.
//

#import "HHACircleViewController.h"
#import "HHAHypnosisView.h"

@interface HHACircleViewController ()<UITextFieldDelegate>

@end

@implementation HHACircleViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.title = @"催眠";
        self.tabBarItem.image = [UIImage imageNamed:@"pulse.png"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    CGRect frame = [UIScreen mainScreen].bounds;
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:frame];
    
    CGRect bounds = frame;
    bounds.size.width *= 2.0;
    scrollView.contentSize = bounds.size;
    scrollView.pagingEnabled = YES;
    
    HHAHypnosisView *hv = [[HHAHypnosisView alloc] initWithFrame:frame];
    
    frame.origin.x += frame.size.width;
    HHAHypnosisView *shv = [[HHAHypnosisView alloc] initWithFrame:frame];
    
    [self.view addSubview:scrollView];
    [scrollView addSubview:hv];
    [scrollView addSubview:shv];
    
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(10, 100, frame.size.width - 20, 45)];
    [hv addSubview:textField];
    textField.borderStyle = UITextBorderStyleRoundedRect;
    textField.placeholder = @"Hypnotize me";
    textField.returnKeyType = UIReturnKeyDone;
    textField.delegate = self;
}


- (void)drawHypnoticMessage:(NSString *)message {
    for (int i = 0; i < 20; i++) {
        UILabel *messageLabel = [[UILabel alloc] init];
        messageLabel.backgroundColor = [UIColor clearColor];
        messageLabel.textColor = [UIColor redColor];
        messageLabel.text = message;
        [messageLabel sizeToFit];
        NSInteger width = (NSInteger)(self.view.bounds.size.width - messageLabel.bounds.size.width);
        NSInteger x = arc4random() % width;
        NSInteger height = (NSInteger)(self.view.bounds.size.height - messageLabel.bounds.size.width);
        NSInteger y = arc4random() % height;
        CGRect frame = messageLabel.frame;
        frame.origin = CGPointMake(x, y);
        messageLabel.frame = frame;
        [self.view addSubview:messageLabel];
    }
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self drawHypnoticMessage:textField.text];
    textField.text = @"";
    [textField resignFirstResponder];
    return YES;
}

@end
