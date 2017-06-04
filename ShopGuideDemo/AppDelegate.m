//
//  AppDelegate.m
//  ShopGuideDemo
//
//  Created by 余锦海 on 17/6/4.
//  Copyright © 2017年 余锦海. All rights reserved.
//

#import "AppDelegate.h"
#import "AppDelegate+YJH_AlibcTrade.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // 初始化百川接口
    [AppDelegate yjh_initailAlibcTrade];
    return YES;
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation{
    return [AppDelegate yjh_Application:application openURL:url sourceApplication:sourceApplication annotation:annotation];
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url options:(NSDictionary<NSString *,id> *)options {
    return [AppDelegate yjh_Application:application openURL:url options:options];
}
@end
