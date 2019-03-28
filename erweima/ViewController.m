//
//  ViewController.m
//  erweima
//
//  Created by apple on 2019/3/28.
//  Copyright © 2019年 apple. All rights reserved.
//

#import "ViewController.h"
#import "ScanCodeViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    
    [btn setTitle:@"打开二维码" forState:UIControlStateNormal];
    
    btn.frame = CGRectMake(100, 100, 300, 100);
    
    [self.view addSubview:btn];
    
    [btn addTarget:self action:@selector(clickErweima:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)clickErweima:(UIButton *)sender{
    ScanCodeViewController *scanCodeVC = [[ScanCodeViewController alloc] init];
    [self.navigationController pushViewController:scanCodeVC animated:YES];
}


@end
