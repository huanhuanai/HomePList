//
//  HHAItemStore.h
//  reHomepwner
//
//  Created by 李欢 on 2021/3/5.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class HHAItem;

@interface BNRItemStore : NSObject

@property (nonatomic, readonly) NSArray *allItems;

+ (instancetype)sharedStore;
- (HHAItem *)createItem;
- (void)removeItem:(HHAItem *)item;
- (void)moveItemAtIndex:(NSInteger)fromIndex toIndex:(NSInteger)toIndex;
@end

NS_ASSUME_NONNULL_END
