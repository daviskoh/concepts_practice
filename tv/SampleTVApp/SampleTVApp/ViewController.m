//
//  ViewController.m
//  SampleTVApp
//
//  Created by Davis Koh on 9/18/15.
//  Copyright © 2015 com.DavisKoh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(500, 200, 500, 500)];
    label.text = @"Hello Apple TV";
    label.font = [label.font fontWithSize:50.0];
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
