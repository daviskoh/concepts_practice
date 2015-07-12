//
//  AppDelegate.h
//  iTahDoodle
//
//  Created by Davis Koh on 7/12/15.
//  Copyright © 2015 com.DavisKoh. All rights reserved.
//

#import <UIKit/UIKit.h>

// get path to location on disk where todo list can be saved
NSString *docPath(void);

// App Delegate is starting point for application
@interface AppDelegate : UIResponder <UIApplicationDelegate> {
    UITableView *taskTable;
    UITextField *taskField;
    UIButton *insertButton;
    
    NSMutableArray *tasks;
}

@property (strong, nonatomic) UIWindow *window;

- (void)addTask:(id)sender;

@end

