//
//  main.m
//  XMproject
//
//  Created by a bin on 15/11/5.
//  Copyright (c) 2015年 a bin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

//argc、argv：直接传递给UIApplicationMain进行相关处理即可
//
//principalClassName：指定应用程序类名（app的象征），该类必须是UIApplication(或子类)。如果为nil,则用UIApplication类作为默认值
//
//delegateClassName：指定应用程序的代理类，该类必须遵守UIApplicationDelegate协议
//
//UIApplicationMain函数会根据principalClassName创建UIApplication对象，根据delegateClassName创建一个delegate对象，并将该delegate对象赋值给UIApplication对象中的delegate属性
//
//接着会建立应用程序的Main Runloop（事件循环），进行事件的处理(首先会在程序完毕后调用delegate对象的application:didFinishLaunchingWithOptions:方法)
//
//程序正常退出时UIApplicationMain函数才返回
int main(int argc, char * argv[]) {
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
