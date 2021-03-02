//
//  HHAItemStore.m
//  reHomepwner
//
//  Created by 李欢 on 2021/3/2.
//

#import "HHAItemsStore.h"
#import "HHAItems.h"

@interface HHAItemsStore ()

@property (nonatomic, copy) NSMutableArray *privateItems;

@end

@implementation HHAItemsStore

+ (instancetype)sharedStore {
    static HHAItemsStore *sharedStore;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedStore = [[self alloc] initPrivate];
    });
    return sharedStore;
}

- (NSArray *)allItems {
    return self.privateItems;
}

- (instancetype)initPrivate {
    self = [super init];
    if (self) {
        _privateItems = [NSMutableArray array];
    }
    return self;
}

- (HHAItems *)createItem {
    HHAItems *item = [HHAItems randomItem];
    [self.privateItems addObject:item];
    return item;
}

@end
