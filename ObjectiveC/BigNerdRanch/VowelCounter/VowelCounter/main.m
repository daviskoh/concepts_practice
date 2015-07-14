//
//  main.m
//  VowelCounter
//
//  Created by Davis Koh on 7/13/15.
//  Copyright © 2015 com.DavisKoh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+VowelCounting.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *string = @"Hello, World!";
        NSLog(@"%@ has %d vowels", string, [string vowelCount]);
    }
    return 0;
}
