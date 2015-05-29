//
//  ViewController.m
//  ProgrammaticViews
//
//  Created by Davis Koh on 5/8/15.
//  Copyright (c) 2015 com.DavisKoh. All rights reserved.
//

#import "ViewController.h"
#import "KOHView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)loadView {
    // assign to .view prop
    self.view = [[KOHView alloc] initWithFrame:CGRectZero];
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
