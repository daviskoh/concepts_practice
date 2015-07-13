//
//  Appliance.h
//  Appliances
//
//  Created by Davis Koh on 7/12/15.
//  Copyright © 2015 com.DavisKoh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Appliance : NSObject

@property (copy) NSString *productName;
@property int voltage;

- (id)initWithProductName:(NSString *)productName;

@end
