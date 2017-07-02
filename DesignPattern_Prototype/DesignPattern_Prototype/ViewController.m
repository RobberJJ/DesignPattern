//
//  ViewController.m
//  DesignPattern_Prototype
//
//  Created by JieFei on 2017/7/2.
//  Copyright © 2017年 RobberJJ. All rights reserved.
//

#import "ViewController.h"
#import "Dot.h"
#import "Vertex.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Vertex *vertex1 = [[Vertex alloc]initWithLocation:CGPointMake(10, 10)];
    Vertex *vertex2 = [vertex1 copy];
    Vertex *vertex3 = [vertex1 copy];
    Vertex *vertex4 = [vertex1 copy];
    [vertex4 setLocation:CGPointMake(50, 50)];
    
    NSLog(@"vertex1内存地址：%p,vertex2内存地址：%p,vertex3内存地址：%p,vertex4内存地址：%p",vertex1,vertex2,vertex3,vertex4);
    
    NSLog(@"vertex3.location：%@,vertex4.location:%@",NSStringFromCGPoint(vertex3.location),NSStringFromCGPoint(vertex4.location));
    
    Dot *dot1 = [[Dot alloc]initWithLocation:CGPointMake(100, 100)];
    [dot1 addMark:vertex1];
    [dot1 addMark:vertex2];
    [dot1 addMark:vertex3];
    [dot1 addMark:vertex4];
    
    Dot *dot2 = [dot1 copy];
    
    NSLog(@"=========================================");
    NSLog(@"dot1的mark个数%ld,内存地址:%p",dot1.count,dot1);
    NSLog(@"dot2的mark个数%ld,内存地址:%p",dot2.count,dot2);
    [dot1 removeMark:vertex1];
    NSLog(@"dot1的mark个数%ld,内存地址:%p",dot1.count,dot1);
    NSLog(@"dot2的mark个数%ld,内存地址:%p",dot2.count,dot2);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
