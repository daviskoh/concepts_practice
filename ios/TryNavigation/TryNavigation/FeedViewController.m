//
//  FeedViewController.m
//  TryNavigation
//
//  Created by Davis Koh on 8/29/15.
//  Copyright © 2015 com.DavisKoh. All rights reserved.
//

#import "FeedViewController.h"
#import "Image.h"

@interface FeedViewController ()

@end

@implementation FeedViewController

- (id)initWithNibName:(nullable NSString *)nibNameOrNil bundle:(nullable NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        self.title = @"Feed";
        self.images = @[
                            [[Image alloc] init],
                            [[Image alloc] init],
                            [[Image alloc] init],
                            [[Image alloc] init],
                            [[Image alloc] init],
                            [[Image alloc] init],
                            [[Image alloc] init]
                       ];
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // make scroll take up view size of entire view
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.frame];
    self.scrollView.backgroundColor = [UIColor yellowColor];
    self.scrollView.autoresizingMask  = UIViewAutoresizingFlexibleHeight;
    // Make content size width = device width & height arbitrary amound
    CGRect contentSize = [[UIScreen mainScreen] bounds];
    self.scrollView.contentSize = CGSizeMake(contentSize.size.width, contentSize.size.height * 2);
    
    CGFloat y = 50;
    
    for (Image *image in self.images) {
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        imageView.contentMode = UIViewContentModeTop;
        CGFloat x = ([[UIScreen mainScreen] bounds].size.width - 50) / 2;
        imageView.frame = CGRectMake(x, y, 50, 50);
        y += 150;
        
        [self.scrollView addSubview:imageView];
    }
    
    [self.view addSubview:self.scrollView];
}

// TODO: add touch event to images
- (void)imageClicked:(UIImageView *)sender {
    NSLog(@"clicked image: %@", sender);
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
