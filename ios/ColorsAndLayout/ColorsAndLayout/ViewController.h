//
//  ViewController.h
//  ColorsAndLayout
//
//  Created by Davis Koh on 8/21/15.
//  Copyright © 2015 com.DavisKoh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

// NOTE: IOS convertion to add subviews as properties on ctrl
@property (weak, nonatomic) UIButton *fiftyPercentButton;

- (void)buttonPressed:(UIButton *)sender;

@end

