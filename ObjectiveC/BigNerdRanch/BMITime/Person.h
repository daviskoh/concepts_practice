//
//  Person.h
//  BMITime
//
//  Created by Davis Koh on 7/9/15.
//  Copyright (c) 2015 com.DavisKoh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (readonly) float heightInMeters;
@property (readonly) int weightInKilos;

- (id)initWithHeightInMeters:(float)height weightInKilos:(int)weight;

- (float)bodyMassIndex;

@end
