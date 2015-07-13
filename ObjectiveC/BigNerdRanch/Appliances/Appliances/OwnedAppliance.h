//
//  OwnedAppliance.h
//  Appliances
//
//  Created by Davis Koh on 7/13/15.
//  Copyright © 2015 com.DavisKoh. All rights reserved.
//

#import "Appliance.h"

@interface OwnedAppliance : Appliance {
    NSMutableSet *ownerNames;
}

// designated initializer
- (id)initWithProductName:(NSString *)productName
           firstOwnerName:(NSString *)firstOwnerName;

- (void)addOwnerNamesObject:(NSString *)n;

- (void)removeOwnerNamesObject:(NSString *)n;

@end
