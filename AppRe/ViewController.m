//
//  ViewController.m
//  AppRe
//
//  Created by 冯立海 on 16/6/8.
//  Copyright © 2016年 冯立海. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *button  =[UIButton buttonWithType:UIButtonTypeSystem ];
    [button setTitle:@"点击我" forState:UIControlStateNormal];
    [button setFrame:CGRectMake((self.view.frame.size.width-120)/2, (self.view.frame.size.height-40)/2, 120, 40)];
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)buttonClick:(id)sender
{
    [self say:@"Hello iOS!"];
}

- (void)say:(NSString *)string
{
    NSString *identifier = [[NSBundle mainBundle] bundleIdentifier];
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:string message:identifier preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:okAction];
    [self presentViewController:alert animated:YES completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
