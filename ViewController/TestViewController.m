//
//  TestViewController.m
//  MGJRouter
//
//  Created by 丁磊 on 2020/7/27.
//

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *lab = [[UILabel alloc] initWithFrame: CGRectMake(50, 200, 100, 50)];
    lab.text = self.text;
    lab.font = [UIFont systemFontOfSize: 20];
    lab.textColor = [UIColor blackColor];
    [self.view addSubview: lab];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
