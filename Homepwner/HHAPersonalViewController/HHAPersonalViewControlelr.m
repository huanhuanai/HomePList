//
//  HHAPersonalViewControlelr.m
//  Homepwner
//
//  Created by 李欢 on 2021/2/23.
//  Copyright © 2021 huan. All rights reserved.
//

#import "HHAPersonalViewControlelr.h"

@interface HHAPersonalViewControlelr ()

@end

@implementation HHAPersonalViewControlelr

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.title = @"个人";
        self.tabBarItem.image = [UIImage imageNamed:@"github.png"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}


@end
