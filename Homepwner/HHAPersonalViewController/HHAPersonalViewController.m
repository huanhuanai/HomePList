//
//  HHAItemsViewController.m
//  reHomepwner
//
//  Created by 李欢 on 2021/3/2.
//

#import "HHAPersonalViewController.h"
#import "HHAItemsStore.h"
#import "HHAItems.h"

@interface HHAPersonalViewController ()

@end

@implementation HHAPersonalViewController

- (instancetype)init
{
    self = [super initWithStyle:UITableViewStylePlain];
    if (self) {
        for (int i = 0; i < 5; i++) {
            [[HHAItemsStore sharedStore] createItem];
        }
        self.tabBarItem.title = @"个人";
        self.tabBarItem.image = [UIImage imageNamed:@"github.png"];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    return [self init];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    return [self init];
}

- (instancetype)initWithStyle:(UITableViewStyle)style {
    return [self init];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[HHAItemsStore sharedStore] allItems].count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell" forIndexPath:indexPath];
    NSArray *items = [[HHAItemsStore sharedStore] allItems];
    HHAItems *item = items[indexPath.row];
    cell.textLabel.text = item.description;
    return cell;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
}

@end
