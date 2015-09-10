//
//  ProfileViewController.m
//  InstaPhoto
//
//  Created by Davis Koh on 9/9/15.
//  Copyright © 2015 com.DavisKoh. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@property NSDictionary *user;

@end

@implementation ProfileViewController

- (id)initWithNibName:(nullable NSString *)nibNameOrNil bundle:(nullable NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        self.title = @"Profile";
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    NSLog(@"%@", self.view);
    self.view.backgroundColor = [UIColor colorWithRed:(135 / 255.0)
                                                green:(206 / 255.0)
                                                 blue:(250 / 255.0)
                                                alpha:1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
