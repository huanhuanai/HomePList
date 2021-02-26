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
}



@end
