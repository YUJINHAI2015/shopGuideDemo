//
//  AppDelegate+YJH_AlibcTrade.h
//  ShopGuideDemo
//
//  Created by 余锦海 on 17/6/4.
//  Copyright © 2017年 余锦海. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate (YJH_AlibcTrade)

+ (void)yjh_initailAlibcTrade;

// iOS9-
+ (BOOL)yjh_Application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation;
// iOS9+
+ (BOOL)yjh_Application:(UIApplication *)application openURL:(NSURL *)url options:(NSDictionary<NSString *,id> *)options;
@end
