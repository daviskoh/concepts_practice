//
//  ViewController.m
//  TestProgrammaticView
//
//  Created by Davis Koh on 5/26/15.
//  Copyright (c) 2015 com.DavisKoh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)loadView {
    // create new UI View & set as .view prop of ctrl
    CGRect applicationFrame = [[UIScreen mainScreen] applicationFrame];
    UIView *mainView = [[UIView alloc] initWithFrame:applicationFrame];
    mainView.backgroundColor = [UIColor greenColor];
    self.view = mainView;

    // create sub view
    UIView *subView = [[UIView alloc] init];
    subView.backgroundColor = [UIColor redColor];
    // specify constraint-based system??
    [subView setTranslatesAutoresizingMaskIntoConstraints:NO];
    // add sub view
    [self.view addSubview:subView];
    
    // add constraints
    // goals: subview should cover top half of parent
    
    // limit width
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:subView
                                                          attribute:NSLayoutAttributeWidth
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeWidth
                                                         multiplier:1.0
                                                           constant:0]];
    // limit height
    [self.view addConstraint: [NSLayoutConstraint constraintWithItem:subView
                                                           attribute:NSLayoutAttributeHeight
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:self.view
                                                           attribute:NSLayoutAttributeHeight
                                                          multiplier:0.4
                                                            constant:0]];
    // position margin
    [self.view addConstraint: [NSLayoutConstraint constraintWithItem:subView
                                                           attribute:NSLayoutAttributeTop
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:self.view
                                                           attribute:NSLayoutAttributeTop
                                                          multiplier:0.5
                                                            constant:(CGRectGetWidth(self.view.bounds) * 0.2)]];
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
