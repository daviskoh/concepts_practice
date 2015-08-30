//
//  ProfileViewController.m
//  TryNavigation
//
//  Created by Davis Koh on 8/29/15.
//  Copyright © 2015 com.DavisKoh. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

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
    self.view.backgroundColor = [UIColor blueColor];
    
    NSURL *imageUrl = [NSURL URLWithString:@"http://33.media.tumblr.com/avatar_948e40c89497_128.png"];
    NSData *imageData = [NSData dataWithContentsOfURL:imageUrl];
    UIImage *image = [UIImage imageWithData:imageData];
    
    self.imageView = [[UIImageView alloc] initWithImage:image];
    self.imageView.contentMode = UIViewContentModeTop;
    self.imageView.frame = CGRectMake(50, 50, 50, 50);
    
    [self.view addSubview:self.imageView];
    
    self.nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 200, 100, 50)];
    self.nameLabel.text = @"Davis Koh";
    self.nameLabel.textColor = [UIColor whiteColor];
    
    [self.view addSubview:self.nameLabel];
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
