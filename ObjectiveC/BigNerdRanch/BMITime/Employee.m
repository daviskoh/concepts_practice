//
//  Employee.m
//  BMITime
//
//  Created by Davis Koh on 7/9/15.
//  Copyright (c) 2015 com.DavisKoh. All rights reserved.
//

#import "Employee.h"
#import "Asset.h"

@implementation Employee

- (void)addAssetsObject:(Asset *)a {
    if (!assets) {
        assets = [[NSMutableSet alloc] init];
    }
    
    [assets addObject:a];
    a.holder = self;
}

- (unsigned int)valueOfAssets {
    unsigned int sum = 0;

    for (Asset *a in assets) {
        sum += a.resaleValue;
    }
    
    return sum;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"<Employee %d: $%d in assets>", self.employeeID, self.valueOfAssets];
}

- (void)dealloc {
    NSLog(@"deallocating %@", self);
}

@end
