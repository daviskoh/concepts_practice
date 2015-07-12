//
//  Logger.m
//  Callbacks
//
//  Created by Davis Koh on 7/11/15.
//  Copyright © 2015 com.DavisKoh. All rights reserved.
//

#import "Logger.h"

@implementation Logger

- (void)sayOuch:(NSTimer *)t {
    NSLog(@"Ouch!");
}

#pragma mark - NSURLConnection Protocol

// called each time chunk of data arrives
- (void)connection:(NSURLConnection *)connection didReceiveData:(nonnull NSData *)data {
    NSLog(@"received %lu bytes", data.length);
    
    if (!incomingData) {
        incomingData = [[NSMutableData alloc] init];
    }
    
    [incomingData appendData:data];
}

// called when last chunk has been processed
- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    NSLog(@"Got it all");
    NSString *string = [[NSString alloc] initWithData:incomingData
                                             encoding:NSUTF8StringEncoding];
    
    incomingData = nil;
    NSLog(@"string has %lu chars", string.length);
    
    // see entire fetched file
    // NSLog(@"The whole string is %@", string);
}

// called if fetch fails
- (void)connection:(NSURLConnection *)connection didFailWithError:(nonnull NSError *)error {
    NSLog(@"connection failed: %@", error.localizedDescription);
    incomingData = nil;
}

#pragma mark - Notifications

- (void)zoneChange:(NSNotification *)note {
    NSLog(@"The system time zone has changed!");
}

@end
