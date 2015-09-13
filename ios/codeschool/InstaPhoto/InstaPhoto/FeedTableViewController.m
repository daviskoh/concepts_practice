//
//  FeedViewController.m
//  InstaPhoto
//
//  Created by Davis Koh on 8/26/15.
//  Copyright © 2015 com.DavisKoh. All rights reserved.
//

#import "FeedTableViewController.h"
#import "ProfileViewController.h"
#import "KOHButton.h"

@interface FeedTableViewController ()

@property NSArray *photos;
@property UIScrollView *scrollView;

@end

@implementation FeedTableViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        self.title = @"Feed";
        // below will look in cache/filesystem for tab_icon_feed.png
        // self.tabBarItem.image = [UIImage imageNamed:@"tab_icon_feed"];
        
        self.photos = @[
                        @"http://placekitten.com.s3.amazonaws.com/homepage-samples/200/140.jpg",
                        @"http://placekitten.com.s3.amazonaws.com/homepage-samples/200/138.jpg",
                        @"http://placekitten.com.s3.amazonaws.com/homepage-samples/200/140.jpg",
                        @"http://placekitten.com.s3.amazonaws.com/homepage-samples/200/138.jpg",
                        @"http://placekitten.com.s3.amazonaws.com/homepage-samples/200/138.jpg",
                        @"http://placekitten.com.s3.amazonaws.com/homepage-samples/200/138.jpg",
                        ];
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blueColor];
    
    // TODO: abstract views into classes
    CGRect bounds = [[UIScreen mainScreen] bounds];
    self.scrollView = [[UIScrollView alloc] initWithFrame:bounds];
    self.scrollView.autoresizesSubviews = UIViewAutoresizingFlexibleHeight;
    self.scrollView.contentSize = CGSizeMake(bounds.size.width, self.photos.count * 170);
    [self.view addSubview:self.scrollView];
    
    int y = 0;
    int i = 0;
    
    // TODO: change UIImageView to clickable Button
    for (NSString *imageUrl in self.photos) {
        KOHButton *imageView = [[KOHButton alloc] initWithImagePath:imageUrl];
        imageView.userId = i++;
        
        [imageView addTarget:self
                      action:@selector(clickImageButton:)
            forControlEvents:UIControlEventTouchUpInside];
        
        // TODO: pin dynamically to device width
        imageView.frame = CGRectMake(100, y, 200, 200);
        y += 150;

        [self.scrollView addSubview:imageView];
    }
}

- (void)clickImageButton:(KOHButton *)sender {
    ProfileViewController *profileCtrl = [[ProfileViewController alloc] init];

    NSLog(@"%i", sender.userId);

    [self.navigationController pushViewController:profileCtrl
                                         animated:YES];
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
