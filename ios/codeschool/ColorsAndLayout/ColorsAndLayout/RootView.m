//
//  RootView.m
//  ColorsAndLayout
//
//  Created by Davis Koh on 8/21/15.
//  Copyright © 2015 com.DavisKoh. All rights reserved.
//

#import "RootView.h"

@implementation RootView

- (id)init {
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    self = [super initWithFrame:viewRect];
    
    if (self) {
        self.backgroundColor = [UIColor yellowColor];
    }
    
    return self;
}

@end
