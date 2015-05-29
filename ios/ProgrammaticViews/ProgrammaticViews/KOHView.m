//
//  KOHView.m
//  ProgrammaticViews
//
//  Created by Davis Koh on 5/29/15.
//  Copyright (c) 2015 com.DavisKoh. All rights reserved.
//

#import "KOHView.h"

@implementation KOHView

@synthesize subView=_subView;

- (id)init {
    return [self initWithFrame:CGRectZero];
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    if (self) {

        /**
         * Steps:
         *
         * 1) Create roow view object (UIView, custom view or other to usually scale to fill screen)
         * 2) Create additional subviews and add to root view by init & addSubview: method
         * 3) Use Auto Layout (or viewWillLayoutSubviews & viewDidLayoutSubviews)
         * 4) Assign root view to ViewController#view
         */
        
        // create root view
        self.backgroundColor = [UIColor greenColor];

        // add subview
        [self addSubview:self.subView];
        
        [self setupConstraints];
    }
    
    return self;
}

- (UIView *)subView {
    if (!_subView) {
        // create subview
        _subView = [[UIView alloc] init];
        /**
         * IMPORTANT: This ensures no constraint will be created automatically for the view,
         * otherwise, any constraint you set is likely to conflict with autoresizing constraints
         */
        [_subView setTranslatesAutoresizingMaskIntoConstraints:NO];
        _subView.backgroundColor = [UIColor redColor];
    }
    
    return _subView;
}

- (void)setupConstraints {
    /**
     * Constraints
     * NOTE: it is responsibility of the parent view to assign position to its children
     */
    
    // width constraint - 1/2 of parent view width
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.subView
                                                     attribute:NSLayoutAttributeWidth
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeWidth
                                                    multiplier:0.5
                                                      constant:0]];
    
    // height constraint - 1/2 of parent view height
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.subView
                                                     attribute:NSLayoutAttributeHeight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeHeight
                                                    multiplier:0.5
                                                      constant:0]];
    
    // center horizontally
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.subView
                                                     attribute:NSLayoutAttributeCenterX
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeCenterX
                                                    multiplier:1.0
                                                      constant:0]];
    
    // center vertically
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.subView
                                                     attribute:NSLayoutAttributeCenterY
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeCenterY
                                                    multiplier:1.0
                                                      constant:0]];
}

@end
