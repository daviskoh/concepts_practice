//
//  Logger.h
//  Callbacks
//
//  Created by Davis Koh on 7/11/15.
//  Copyright © 2015 com.DavisKoh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Logger : NSObject {
    NSMutableData *incomingData;
}

// t - sender of message
- (void)sayOuch:(NSTimer *)t;

- (void)zoneChange:(NSNotification *)note;

@end
