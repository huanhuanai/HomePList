//
//  HHAItem.h
//  RandomItems
//
//  Created by 李欢 on 2020/3/4.
//  Copyright © 2020 huan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRItem : NSObject

@property (nonatomic, strong) NSString *itemName;
@property (nonatomic, strong) NSString *serialNumber;
@property (nonatomic) NSInteger valueInDollars;
@property (nonatomic, strong) NSDate *dateCreated;


+ (instancetype)randomItem;

- (instancetype)initWithItemName:(NSString *)name
                  valueInDollars:(NSInteger)value
                    serialNumber:(NSString *)sNumber;

- (instancetype)initWithItemName:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
