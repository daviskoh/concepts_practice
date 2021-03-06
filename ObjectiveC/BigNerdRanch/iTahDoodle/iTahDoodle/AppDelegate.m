//
//  AppDelegate.m
//  iTahDoodle
//
//  Created by Davis Koh on 7/12/15.
//  Copyright © 2015 com.DavisKoh. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

NSString *docPath() {
    NSArray *pathList = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    return [pathList[0] stringByAppendingPathComponent:@"data.id"];
}

@implementation AppDelegate

#pragma mark - Application delegate callbacks

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Attempt to load existing todo dataset from array stored to disk
    NSArray *plist = [NSArray arrayWithContentsOfFile:docPath()];
    
    if (plist) {
        tasks = plist.mutableCopy;
    } else {
        tasks = [[NSMutableArray alloc] init];
    }
    
    // create views
    
    CGRect windowFrame = [[UIScreen mainScreen] bounds];
    UIWindow *theWindow = [[UIWindow alloc] initWithFrame:windowFrame];
    
    self.window = theWindow;
    
    CGRect tableFrame = CGRectMake(0, 80, 320, 280);
    CGRect fieldFrame = CGRectMake(20, 40, 200, 31);
    CGRect buttonFrame = CGRectMake(228, 40, 72, 31);
    
    taskTable = [[UITableView alloc] initWithFrame:tableFrame
                                             style:UITableViewStylePlain];
    taskTable.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    taskField = [[UITextField alloc] initWithFrame:fieldFrame];
    taskField.borderStyle = UITextBorderStyleRoundedRect;
    taskField.placeholder = @"Type a task, tap Insert";
    
    insertButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    insertButton.frame = buttonFrame;
    
    // add Target Action to button
    [insertButton addTarget:self
                     action:@selector(addTask:)
           forControlEvents:UIControlEventTouchUpInside];

    [insertButton setTitle:@"Insert" forState:UIControlStateNormal];
    
    // add UI elements to window
    [self.window addSubview:taskTable];
    [self.window addSubview:taskField];
    [self.window addSubview:insertButton];
    
    // put window on screen
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
