//
//  KOHButton.m
//  InstaPhoto
//
//  Created by Davis Koh on 9/9/15.
//  Copyright © 2015 com.DavisKoh. All rights reserved.
//

#import "KOHButton.h"

@implementation KOHButton

- (id)initWithImagePath:(NSString *)imagePath {
    self = [super init];
    
    if (self) {
        NSURL *url = [NSURL URLWithString:imagePath];
        NSData *data = [NSData dataWithContentsOfURL:url];
        UIImage *image = [UIImage imageWithData:data];
        [self setImage:image forState:UIControlStateNormal];
    }
    
    return self;
}

@end
