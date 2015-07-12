//
//  Employee.h
//  BMITime
//
//  Created by Davis Koh on 7/9/15.
//  Copyright (c) 2015 com.DavisKoh. All rights reserved.
//

#import "Person.h"
// @class lets compiler know there is a class called Asset
// - use instead of #import for faster file processing
@class Asset;

@interface Employee : Person {
    NSMutableSet *assets;
}

@property int employeeID;

// NOTE: when object added to collection:
// - collection establishes pointer to object
// - object gains owner
// reversed when object removed

- (void)addAssetsObject:(Asset *)a;
- (unsigned int)valueOfAssets;

@end
