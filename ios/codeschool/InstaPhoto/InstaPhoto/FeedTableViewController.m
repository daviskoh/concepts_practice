//
//  FeedViewController.m
//  InstaPhoto
//
//  Created by Davis Koh on 8/26/15.
//  Copyright © 2015 com.DavisKoh. All rights reserved.
//

#import "FeedTableViewController.h"
#import "PhotoViewController.h"
#import "KOHButton.h"

@interface FeedTableViewController ()

@property NSArray *images;
@property UIScrollView *scrollView;

@end

@implementation FeedTableViewController

- (id)initWithStyle:(UITableViewStyle)style {
    self = [super initWithStyle:style];

    if (self) {
        self.title = @"Feed";
        self.images = @[
                        @"http://placekitten.com.s3.amazonaws.com/homepage-samples/200/140.jpg",
                        @"http://placekitten.com.s3.amazonaws.com/homepage-samples/200/140.jpg",
                        @"http://placekitten.com.s3.amazonaws.com/homepage-samples/200/140.jpg",
                        @"http://placekitten.com.s3.amazonaws.com/homepage-samples/200/140.jpg",
                        @"http://placekitten.com.s3.amazonaws.com/homepage-samples/200/140.jpg",
                        @"http://placekitten.com.s3.amazonaws.com/homepage-samples/200/140.jpg",
                        @"http://placekitten.com.s3.amazonaws.com/homepage-samples/200/140.jpg",
                        @"http://placekitten.com.s3.amazonaws.com/homepage-samples/200/140.jpg",
                        @"http://placekitten.com.s3.amazonaws.com/homepage-samples/200/140.jpg",
                        @"http://placekitten.com.s3.amazonaws.com/homepage-samples/200/140.jpg",
                        @"http://placekitten.com.s3.amazonaws.com/homepage-samples/200/140.jpg",
                        @"http://placekitten.com.s3.amazonaws.com/homepage-samples/200/140.jpg",
                        @"http://placekitten.com.s3.amazonaws.com/homepage-samples/200/140.jpg",
                        @"http://placekitten.com.s3.amazonaws.com/homepage-samples/200/140.jpg"
                        ];
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blueColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewController

// returns numbers of sections
- (NSInteger)numberOfSectionsInTableView:(nonnull UITableView *)tableView {
    return 1;
}

// returns number of rows (cells)
- (NSInteger)tableView:(nonnull UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
    return self.images.count;
}

// init & setup each cell
- (UITableViewCell *)tableView:(nonnull UITableView *)tableView
         cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    // check to see if any cells of style "Title" we can reuse
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Title"];
    
    // if no resusable cell, create one
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:@"Title"];
    }
    
    // abstract into KOHImage
    NSString *imagePath = self.images[indexPath.row];
    NSURL *url = [NSURL URLWithString:imagePath];
    NSData *data = [NSData dataWithContentsOfURL:url];
    UIImage *image = [UIImage imageWithData:data];
    cell.imageView.image = image;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    PhotoViewController *photoViewCtrl = [[PhotoViewController alloc] init];
    photoViewCtrl.imagePath = self.images[indexPath.row];
    [self.navigationController pushViewController:photoViewCtrl animated:YES];
}

@end
