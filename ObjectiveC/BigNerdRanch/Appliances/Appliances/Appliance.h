//
//  Appliance.h
//  Appliances
//
//  Created by Davis Koh on 7/12/15.
//  Copyright © 2015 com.DavisKoh. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * Property Guidelines for Lifetime Specifiers:
 * Types: unsafe_unretained (default), strong, weak, copy
 *
 * unsafe_unretained - non-objects
 * strong - objects
 * weak - not imply ownership of object pointed to
 * copy - objects that have mutable subclasses (think passing NSMutableString then mutating it elsewhere accidentally changing the property)
 */

@interface Appliance : NSObject

@property (copy) NSString *productName;
@property int voltage;

// designated initializer
- (id)initWithProductName:(NSString *)productName;

@end
