//
//  MainViewController.m
//  Module
//
//  Created by 丁磊 on 2020/7/27.
//

#import "MainViewController.h"
#import "RouterPublic.h"
@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *lab = [[UILabel alloc] initWithFrame: CGRectMake(50, 200, 100, 50)];
    lab.text = @"MainViewController";
    lab.font = [UIFont systemFontOfSize: 20];
    lab.textColor = [UIColor blackColor];
    [self.view addSubview: lab];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(50, 250, 40, 60)];
    [btn setTitle:@"跳转" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor blueColor];
    [btn addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview: btn];
    // Do any additional setup after loading the view.
}

- (void)push{
    [MGJRouter openURL:kTestVCPageURL
    withUserInfo:@{@"navigationVC" : self.navigationController,
                   }
      completion:nil];
}


@end
