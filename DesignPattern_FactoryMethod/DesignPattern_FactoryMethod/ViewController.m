//
//  ViewController.m
//  DesignPattern_FactoryMethod
//
//  Created by JieFei on 2017/7/2.
//  Copyright © 2017年 RobberJJ. All rights reserved.
//

#import "ViewController.h"
#import "JJCalculate.h"
#import "JJFactory.h"
#import "JJCalculateAdd.h"
#import "JJFactoryAdd.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    JJFactory *factory = [[JJFactoryAdd alloc]init];
    JJFactory  *calculate = [factory createFactory];
    calculate.numberA = 10;
    calculate.numberB = 15;
    NSLog(@"结果是%f",[calculate calculate]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
