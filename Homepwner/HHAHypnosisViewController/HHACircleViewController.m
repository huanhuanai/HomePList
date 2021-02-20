//
//  HHACircleViewController.m
//  Homepwner
//
//  Created by 李欢 on 2021/2/18.
//  Copyright © 2021 huan. All rights reserved.
//

#import "HHACircleViewController.h"
#import "HHAHypnosisView.h"

@interface HHACircleViewController ()

@end

@implementation HHACircleViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.title = @"催眠";
        self.tabBarItem.image = [UIImage imageNamed:@"gift.png"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    CGRect frame = [UIScreen mainScreen].bounds;
    HHAHypnosisView *hv = [[HHAHypnosisView alloc] initWithFrame:frame];
    [self.view addSubview:hv];
}



@end
