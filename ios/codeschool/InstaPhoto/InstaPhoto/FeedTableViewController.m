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

- (id)initWithStyle:(UITableViewStyle)style {
    self = [super initWithStyle:style];

    if (self) {
        self.title = @"Feed";
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
    return 5;
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
    
    return cell;
}

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    ProfileViewController *profileCtrl = [[ProfileViewController alloc] init];

    [self.navigationController pushViewController:profileCtrl
                                         animated:YES];
}

@end
