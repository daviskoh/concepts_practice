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
    
    
    CGRect applicationFrame = [[UIScreen mainScreen] applicationFrame];

    // create root view
    UIView *contentView = [[UIView alloc] initWithFrame:applicationFrame];
    contentView.backgroundColor = [UIColor greenColor];
    
    // assign to .view prop
    self.view = contentView;
    
    // add subview
    UIView *levelView = [[UIView alloc] init];
    levelView.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:levelView];
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
