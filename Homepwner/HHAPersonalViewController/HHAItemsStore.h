//
//  HHAItemStore.h
//  reHomepwner
//
//  Created by 李欢 on 2021/3/2.
//

#import <Foundation/Foundation.h>


@class HHAItem;

NS_ASSUME_NONNULL_BEGIN

@interface HHAItemsStore : NSObject

@property (nonatomic, readonly) NSArray *allItems;

+ (instancetype)sharedStore;
- (HHAItem *)createItem;

@end

NS_ASSUME_NONNULL_END
