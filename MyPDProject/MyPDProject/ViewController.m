//
//  ViewController.m
//  MyPDProject
//
//  Created by kztskawamu on 2015/07/10.
//  Copyright (c) 2015年 cazcawa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UISwitch *onOff;

@end

@implementation ViewController

- (IBAction)onSwitchChange:(id)sender {
    [self.patch onOff:[sender isOn]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.patch = [[PDPatch alloc]initWithFile:@"main.pd"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
