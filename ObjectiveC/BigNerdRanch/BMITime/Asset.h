//
//  Asset.h
//  BMITime
//
//  Created by Davis Koh on 7/9/15.
//  Copyright (c) 2015 com.DavisKoh. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Employee;

@interface Asset : NSObject

// strong - signify pointer to object that Asset instance owns
// NOTE: when object doesn't have any owners, it is deallocated
@property (strong) NSString *label;
@property unsigned int resaleValue;

@property (weak) Employee *holder;

@end
