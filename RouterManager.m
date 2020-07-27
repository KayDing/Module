//
//  RouterManager.m
//  MGJRouter
//
//  Created by 丁磊 on 2020/7/27.
//

#import "RouterManager.h"
//#import "MGJRouter.h"
#import "MainViewController.h"
#import "TestViewController.h"


@interface RouterManager ()
@property (nonatomic, strong) MainViewController *mainVC;
@end

@implementation RouterManager

- (UIViewController *)rootVC{
    if (!_mainVC) {
        _mainVC = [[MainViewController alloc] init];
    }
    return _mainVC;
}


+ (void)setupRouter{
//    注册
    [MGJRouter registerURLPattern:kMainVCPageURL toHandler:^(NSDictionary *routerParameters) {
        UINavigationController *navigationVC = routerParameters[MGJRouterParameterUserInfo][@"navigationVC"];
        MainViewController *vc = [[MainViewController alloc] init];
        [navigationVC pushViewController:vc animated:YES];
    }];
    [MGJRouter registerURLPattern:kTestVCPageURL toHandler:^(NSDictionary *routerParameters) {
        UINavigationController *navigationVC = routerParameters[MGJRouterParameterUserInfo][@"navigationVC"];
        TestViewController *vc = [[TestViewController alloc] init];
        NSString *text = routerParameters[MGJRouterParameterUserInfo][@"text"];
        vc.text = text;
        [navigationVC pushViewController:vc animated:YES];
    
    }];
}
@end
