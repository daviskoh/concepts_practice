//
//  Asset.m
//  BMITime
//
//  Created by Davis Koh on 7/9/15.
//  Copyright (c) 2015 com.DavisKoh. All rights reserved.
//

#import "Asset.h"
#import "Employee.h"

@implementation Asset

- (NSString *)description {
    if (self.holder) {
        return [NSString stringWithFormat:@"<%@: $%d, assigned to %@>", self.label, self.resaleValue, self.holder];
    }
    
    return [NSString stringWithFormat:@"<%@: $%d, unassigned>", self.label, self.resaleValue];
}

- (void)dealloc {
    NSLog(@"deallocating %@", self);
}

@end
