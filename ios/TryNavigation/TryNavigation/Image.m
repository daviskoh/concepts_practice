//
//  Image.m
//  TryNavigation
//
//  Created by Davis Koh on 8/29/15.
//  Copyright © 2015 com.DavisKoh. All rights reserved.
//

#import "Image.h"

@implementation Image

- (id)init {
    NSURL *imageUrl = [NSURL URLWithString:@"http://33.media.tumblr.com/avatar_948e40c89497_128.png"];
    NSData *imageData = [NSData dataWithContentsOfURL:imageUrl];
    
    self = [super initWithData:imageData];
    
    return self;
}

@end
