//
//  KOHTableViewCell.m
//  InstaPhoto
//
//  Created by Davis Koh on 9/16/15.
//  Copyright © 2015 com.DavisKoh. All rights reserved.
//

#import "KOHTableViewCell.h"

@implementation KOHTableViewCell

- (void)layoutSubviews {
    [super layoutSubviews];
    
    CGSize size = self.contentView.bounds.size;
    self.imageView.center = CGPointMake(size.width / 2, size.height / 2);
}

@end
