//
//  main.m
//  stockz
//
//  Created by Davis Koh on 7/11/15.
//  Copyright © 2015 com.DavisKoh. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *stocks = [[NSMutableArray alloc] init];
        
        [stocks addObject:@{
                                @"symbol": @"AAPL",
                                @"shares": [NSNumber numberWithInt:200]
                            }];
        
        [stocks addObject:@{
                                @"symbol": @"GOOG",
                                @"shares": [NSNumber numberWithInt:160]
                            }];
        
        [stocks writeToFile:@"/tmp/stocks.plist"
                 atomically:YES];
        
        NSArray *stockList = [NSArray arrayWithContentsOfFile:@"/tmp/stocks.plist"];
        
        for (NSDictionary *d in stockList) {
            NSLog(@"I have %@ shares of %@", [d objectForKey:@"shares"], [d objectForKey:@"symbol"]);
        }
    }
    return 0;
}
