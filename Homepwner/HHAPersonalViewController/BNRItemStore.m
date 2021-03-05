//
//  HHAItemStore.m
//  reHomepwner
//
//  Created by 李欢 on 2021/3/5.
//

#import "BNRItemStore.h"
#import "BNRItem.h"
@interface BNRItemStore ()

@property (nonatomic) NSMutableArray *privateItems;

@end

@implementation BNRItemStore

- (NSArray *)allItems {
    return _privateItems;
}

+ (instancetype)sharedStore {
    static BNRItemStore *sharedStore = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedStore = [[self alloc] initPrivate];
    });
    return sharedStore;
}

- (instancetype)initPrivate {
    self = [super init];
    if (self) {
        _privateItems = [NSMutableArray array];
    }
    return self;
}

- (instancetype)init
{
    @throw [NSException exceptionWithName:@"singleton"
                                   reason:@"use + [HHAItemStore sharedStore]"
                                 userInfo:nil];
    return nil;
}

- (BNRItem *)createItem {
    BNRItem *newItem = [BNRItem randomItem];
    [self.privateItems addObject:newItem];
    return newItem;
}

- (void)removeItem:(BNRItem *)item {
    [self.privateItems removeObject:item];
}
- (void)moveItemAtIndex:(NSInteger)fromIndex toIndex:(NSInteger)toIndex {
    if (fromIndex == toIndex) {
        return;
    }
    BNRItem *item = self.privateItems[fromIndex];
    [self.privateItems removeObject:item];
    [self.privateItems insertObject:item atIndex:toIndex];
}

@end
