//
//  ViewController.m
//  ProgrammaticViews
//
//  Created by Davis Koh on 5/8/15.
//  Copyright (c) 2015 com.DavisKoh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)loadView {
    /**
     * Steps:
     * 
     * 1) Create roow view object (UIView, custom view or other to usually scale to fill screen)
     * 2) Create additional subviews and add to root view by init & addSubview: method
     * 3) Use Auto Layout (or viewWillLayoutSubviews & viewDidLayoutSubviews)
     * 4) Assign root view to ViewController#view
     */

    // create root view
    UIView *contentView = [[UIView alloc] init];
    contentView.backgroundColor = [UIColor greenColor];
    // assign to .view prop
    self.view = contentView;
    
    // create subview
    UIView *subView = [[UIView alloc] init];
    /**
     * IMPORTANT: This ensures no constraint will be created automatically for the view,
     * otherwise, any constraint you set is likely to conflict with autoresizing constraints
     */
    [subView setTranslatesAutoresizingMaskIntoConstraints:NO];
    subView.backgroundColor = [UIColor redColor];
    // add subview
    [self.view addSubview:subView];
    
    /**
     * Constraints
     * NOTE: it is responsibility of the parent view to assign position to its children
     */
    
    // width constraint - 1/2 of parent view width
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:subView
                                                          attribute:NSLayoutAttributeWidth
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeWidth
                                                         multiplier:0.5
                                                           constant:0]];
    
    // height constraint - 1/2 of parent view height
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:subView
                                                          attribute:NSLayoutAttributeHeight
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeHeight
                                                          multiplier:0.5
                                                           constant:0]];
    
    // center horizontally
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:subView
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0
                                                           constant:0]];
    
    // center vertically
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:subView
                                                          attribute:NSLayoutAttributeCenterY
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterY
                                                         multiplier:1.0
                                                           constant:0]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
