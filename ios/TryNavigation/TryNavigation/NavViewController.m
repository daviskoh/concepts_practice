//
//  NavViewController.m
//  TryNavigation
//
//  Created by Davis Koh on 8/29/15.
//  Copyright © 2015 com.DavisKoh. All rights reserved.
//

#import "NavViewController.h"
#import "FeedViewController.h"
#import "ProfileViewController.h"

@interface NavViewController ()

@end

@implementation NavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    ProfileViewController *profileViewCtrl = [[ProfileViewController alloc] init];
    FeedViewController *feedViewCtrl = [[FeedViewController alloc] init];
    
    self.viewControllers = @[feedViewCtrl, profileViewCtrl];
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
