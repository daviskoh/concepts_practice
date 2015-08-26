//
//  ViewController.m
//  ColorsAndLayout
//
//  Created by Davis Koh on 8/21/15.
//  Copyright © 2015 com.DavisKoh. All rights reserved.
//

#import "ViewController.h"
#import "RootView.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - load view

- (void)loadView {
    self.view = [[RootView alloc] init];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Button
    UIButton *firstButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.fiftyPercentButton = firstButton;

    // x, y, width, height in points
    // NOTE: points are objective units of measure indie of pixels
    self.fiftyPercentButton.frame = CGRectMake(100, 100, 100, 44);
    [self.fiftyPercentButton setTitle:@"Click me!"
                 forState:UIControlStateNormal];
    [self.fiftyPercentButton setTitle:@"Ouch!"
                 forState:UIControlStateHighlighted];
    self.fiftyPercentButton.backgroundColor = [UIColor whiteColor];
    
    // NOTE: @selector is how we pass method names as params
    // think ref to func name in JS
    [self.fiftyPercentButton addTarget:self
                    action:@selector(buttonPressed:)
          forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:self.fiftyPercentButton];
    
    // Label
    UILabel *firstLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 30, 220, 44)];
    firstLabel.text = @"Hello, welcome, to my app!";
    [self.view addSubview:firstLabel];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    // NSLog(@"touched w/ event: %@", event);
}

- (void)buttonPressed:(UIButton *)sender {
    NSLog(@"Button pressed with sender: %@", sender);
    self.view.alpha = (double)arc4random() / 0x100000000;
    [sender removeFromSuperview];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
