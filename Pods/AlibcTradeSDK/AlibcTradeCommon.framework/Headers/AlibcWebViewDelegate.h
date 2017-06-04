/*
 * AlibcWebViewDelegate.h 
 *
 * 阿里百川电商
 * 项目名称：阿里巴巴电商 AlibcTradeCommon 
 * 版本号：3.1.1.93
 * 发布时间：2017-03-06
 * 开发团队：阿里巴巴百川商业化团队
 * 阿里巴巴电商SDK答疑群号：1229144682(阿里旺旺)
 * Copyright (c) 2016-2019 阿里巴巴-移动事业群-百川. All rights reserved.
 */

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "AlibcURLBus.h"

#ifndef AlibcWebViewDelegate_h
#define AlibcWebViewDelegate_h

@interface AlibcWebViewDelegate : NSObject <UIWebViewDelegate>
@property(nonatomic, weak) id <UIWebViewDelegate> originDelegate;
@property(nonatomic, strong) AlibcURLBusContext *context;

@end

#endif
