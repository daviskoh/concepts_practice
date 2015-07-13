//
//  main.m
//  Appliances
//
//  Created by Davis Koh on 7/12/15.
//  Copyright © 2015 com.DavisKoh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Appliance.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Appliance *a = [[Appliance alloc] init];
        
        NSLog(@"%@", [a description]);
        a.productName = @"Washing Machine";
        a.voltage = 240;
        
        NSLog(@"%@", [a description]);
    }
    return 0;
}
