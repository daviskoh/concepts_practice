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
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(500, 200, 500, 500)];
    [button setTitle:@"Hello Apple TV" forState:UIControlStateNormal];
    button.titleLabel.font = [button.titleLabel.font fontWithSize:50.0];
    
    [button addTarget:self
               action:@selector(buttonSelected:)
     forControlEvents:UIControlEventPrimaryActionTriggered];

    [self.view addSubview:button];
}

- (void)buttonSelected:(UIButton *)sender {
    NSLog(@"selected");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
