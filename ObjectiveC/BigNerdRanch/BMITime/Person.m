//
//  Person.m
//  BMITime
//
//  Created by Davis Koh on 7/9/15.
//  Copyright (c) 2015 com.DavisKoh. All rights reserved.
//

#import "Person.h"

@interface Person ()

@property (readwrite) float heightInMeters;
@property (readwrite) int weightInKilos;

@end

@implementation Person

- (id)initWithHeightInMeters:(float)height weightInKilos:(int)weight {
    self = [super init];
    
    if (self) {
        self.heightInMeters = height;
        self.weightInKilos = weight;
    }
    
    return self;
}

- (float)bodyMassIndex {
    return self.weightInKilos / (self.heightInMeters * self.heightInMeters);
}

@end
