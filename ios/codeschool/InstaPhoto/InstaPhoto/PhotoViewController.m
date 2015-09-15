//
//  PhotoViewController.m
//  InstaPhoto
//
//  Created by Davis Koh on 9/13/15.
//  Copyright © 2015 com.DavisKoh. All rights reserved.
//

#import "PhotoViewController.h"

@interface PhotoViewController ()

@property UIImageView *imageView;

@end

@implementation PhotoViewController

- (id)initWithNibName:(nullable NSString *)nibNameOrNil bundle:(nullable NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        self.title = @"Photo";
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURL *url = [NSURL URLWithString:self.imagePath];
    NSData *data = [NSData dataWithContentsOfURL:url];
    UIImage *image = [UIImage imageWithData:data];
    self.imageView = [[UIImageView alloc] initWithImage:image];

    self.imageView.frame = CGRectMake(10, 88, 300, 300);
    self.imageView.center = [self.view convertPoint:self.view.center
                                      fromView:self.view.superview];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(didChangeOrientation:)
                                                 name:@"UIDeviceOrientationDidChangeNotification"
                                               object:nil];
    
    [self.view addSubview:self.imageView];
}

- (void)didChangeOrientation:(NSNotification *)notification {
    self.imageView.center = [self.view convertPoint:self.view.center
                                      fromView:self.view.superview];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
