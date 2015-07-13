//
//  OwnedAppliance.m
//  Appliances
//
//  Created by Davis Koh on 7/13/15.
//  Copyright © 2015 com.DavisKoh. All rights reserved.
//

#import "OwnedAppliance.h"

@implementation OwnedAppliance

/**
 * NOTE: A class has only 1 designated initializer
 */

// need to override super's method because super does not know of firstOwnerName
// which needs to be set to at least nil
- (id)initWithProductName:(NSString *)productName {
    return [self initWithProductName:productName firstOwnerName:nil];
}

- (id)initWithProductName:(NSString *)productName
           firstOwnerName:(NSString *)firstOwnerName {
    
    self = [super init];
    
    if (self) {
        ownerNames = [[NSMutableSet alloc] init];
        
        if (firstOwnerName) {
            [ownerNames addObject:firstOwnerName];
        }
    }
    
    return self;
}

- (void)addOwnerNamesObject:(NSString *)n {
    [ownerNames addObject:n];
}

- (void)removeOwnerNamesObject:(NSString *)n {
    [ownerNames removeObject:n];
}

@end
