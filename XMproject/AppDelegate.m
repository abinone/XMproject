//
//  AppDelegate.m
//  XMproject
//
//  Created by a bin on 15/11/5.
//  Copyright (c) 2015年 a bin. All rights reserved.
//

#import "AppDelegate.h"
#import "TarBarController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

// 当应用程序启动完毕的时候就会调用(系统自动调用)
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    TarBarController *vc = [[TarBarController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    self.window.rootViewController = nav;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}
// 即将失去活动状态的时候调用(失去焦点, 不可交互)
- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}
// 应用程序进入后台的时候调用
// 一般在该方法中保存应用程序的数据, 以及状态
- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}
// 应用程序即将进入前台的时候调用
// 一般在该方法中恢复应用程序的数据,以及状态
- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}
// 重新获取焦点(能够和用户交互)
- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}
// 应用程序即将被销毁的时候会调用该方法
// 注意:如果应用程序处于挂起状态的时候无法调用该方法
- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
