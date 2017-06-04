//
//  ViewController.m
//  ShopGuideDemo
//
//  Created by 余锦海 on 17/6/4.
//  Copyright © 2017年 余锦海. All rights reserved.
//

#import "ViewController.h"
#import <AlibcTradeSDK/AlibcTradeSDK.h>
@interface ViewController ()
@property (nonatomic, strong) UIWebView *shopDetailWebView;
@property (nonatomic, strong) UIBarButtonItem *hideBar;
- (IBAction)openNativeWebView:(UIButton *)sender;
- (IBAction)openTBWebView:(UIButton *)sender;
@end

@implementation ViewController
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)nativeWebView {
    //根据链接打开页面
    id<AlibcTradePage> page = [AlibcTradePageFactory page: @"https://h5.m.taobao.com/#index"];
    
    AlibcTradeShowParams* showParam = [[AlibcTradeShowParams alloc] init];
    showParam.openType = AlibcOpenTypeAuto;
    showParam.backUrl=@"tbopen23897382://";
    //    showParam.isNeedPush=isNeedPush;
    
    //    AlibcTradeTaokeParams *taokeParam = [[AlibcTradeTaokeParams alloc] init];
    
    [[[AlibcTradeSDK sharedInstance] tradeService] show:self webView:self.shopDetailWebView page:page showParams:showParam taoKeParams:nil trackParam:nil tradeProcessSuccessCallback:^(AlibcTradeResult * _Nullable result) {
        NSLog(@"tradeProcessSuccessCallback%@",result);
    } tradeProcessFailedCallback:^(NSError * _Nullable error) {
        NSLog(@"tradeProcessFailedCallback%@",error);
    }];
}
- (void)TBWebView {
    //打开商品详情页
//    id<AlibcTradePage> page = [AlibcTradePageFactory itemDetailPage: @"123456"];
//    
//    //添加商品到购物车
//    id<AlibcTradePage> page = [AlibcTradePageFactory addCartPage: @"123456"];
//    
    //根据链接打开页面
    id<AlibcTradePage> page = [AlibcTradePageFactory page: @"https://h5.m.taobao.com/#index"];
    
    //打开店铺
//    id<AlibcTradePage> page = [AlibcTradePageFactory shopPage: @"123456"];
//    
//    //打开我的订单页
//    id<AlibcTradePage> page = [AlibcTradePageFactory myOrdersPage:0 isAllOrder:YES];
//    
//    //打开我的购物车
//    id<AlibcTradePage> page = [AlibcTradePageFactory myCartsPage];
    
    
    //淘客信息
    AlibcTradeTaokeParams *taoKeParams=[[AlibcTradeTaokeParams alloc] init];
    taoKeParams.pid=nil; //
    //打开方式
    AlibcTradeShowParams* showParam = [[AlibcTradeShowParams alloc] init];
    showParam.openType = AlibcOpenTypeAuto;
    showParam.backUrl=@"tbopen23897382://";
    
    [[AlibcTradeSDK sharedInstance].tradeService show: self.navigationController page:page showParams:showParam taoKeParams: nil trackParam: nil tradeProcessSuccessCallback:^(AlibcTradeResult * _Nullable result) {
        NSLog(@"tradeProcessSuccessCallback%@",result);
    }  tradeProcessFailedCallback:^(NSError * _Nullable error) {
        NSLog(@"tradeProcessFailedCallback%@",error);
    }];
}

- (UIWebView *)shopDetailWebView {
    if (!_shopDetailWebView) {
        _shopDetailWebView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 64, self.view.bounds.size.width, self.view.bounds.size.height - 64)];
    }
    return _shopDetailWebView;
}
- (void)hideAction {
    self.shopDetailWebView.hidden = YES;
}
- (IBAction)openNativeWebView:(UIButton *)sender {
    self.hideBar = [[UIBarButtonItem alloc] initWithTitle:@"关闭" style:UIBarButtonItemStylePlain target:self action:@selector(hideAction)];
    self.navigationItem.rightBarButtonItem = self.hideBar;
    [self.view addSubview:self.shopDetailWebView];

    [self nativeWebView];
}

- (IBAction)openTBWebView:(UIButton *)sender {
    [self TBWebView];
}

@end
