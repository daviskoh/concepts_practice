//
//  Appliance.m
//  Appliances
//
//  Created by Davis Koh on 7/12/15.
//  Copyright © 2015 com.DavisKoh. All rights reserved.
//

#import "Appliance.h"

// Requirement for Exercise: all appliances need product name

@implementation Appliance

- (id)init {
    return [self initWithProductName:@"Unknown"];
}

- (id)initWithProductName:(NSString *)productName {
    self = [super init];
    
    if (self) {
        self.productName = productName;
        
        self.voltage = 120;
    }
    
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"<%@: %d volts", self.productName, self.voltage];
}

@end
