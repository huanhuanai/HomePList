//
//  HHAReminderViewController.m
//  Homepwner
//
//  Created by 李欢 on 2021/2/15.
//  Copyright © 2021 huan. All rights reserved.
//

#import "HHAReminderViewController.h"

@interface HHAReminderViewController ()

@end

@implementation HHAReminderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.image = [UIImage imageNamed:@"gift.png"];
        self.tabBarItem.title = @"红包";
    }
    return self;
}

@end
