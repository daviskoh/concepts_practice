//
//  main.m
//  Stringz
//
//  Created by Davis Koh on 7/9/15.
//  Copyright © 2015 com.DavisKoh. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableString *str = [[NSMutableString alloc] init];
        
        for (int i = 0; i < 10; i++) {
            [str appendString:@"Aaron is cool!\n"];
        }
        
        NSError *error = nil;
        
        // try writing to @"/meowmix/foo.txt"
        BOOL success = [str writeToFile:@"/tmp/cool.txt"
              atomically:YES
                encoding:NSUTF8StringEncoding
                   error:&error];
        // NOTE: &error above is an address of an address (see writToFile:atomically:encoding:error for details)
        
        if (success) {
            NSLog(@"done writing /tmp/cool.text");
        } else {
            NSLog(@"writing /tmp/cool.txt failed: %@", [error localizedDescription]);
        }
    }
    return 0;
}
