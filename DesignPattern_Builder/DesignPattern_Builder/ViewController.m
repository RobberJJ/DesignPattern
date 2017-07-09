//
//  ViewController.m
//  DesignPattern_Builder
//
//  Created by JieFei on 2017/7/9.
//  Copyright © 2017年 RobberJJ. All rights reserved.
//

#import "ViewController.h"
#import "JJPersonBuilderDirector.h"
#import "JJPersonFatBuilder.h"
#import "JJPersonThinBuilder.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self buildFat];
    [self buildThin];
}

- (void)buildFat {
    JJPersonBuilderDirector *director = [[JJPersonBuilderDirector alloc]init];
    JJPresionBuilder builder = [[JJPersonFatBuilder alloc]init];
    //为director指定builder
    director.builder = builder;
    //director发出构建的指令，builder负责具体的建造过程
    [director buildPerson];
}

- (void)buildThin {
    
    JJPersonBuilderDirector *director = [[JJPersonBuilderDirector alloc]init];
    JJPresionBuilder builder = [[JJPersonThinBuilder alloc]init];
    //为director指定builder
    director.builder = builder;
    //director发出构建的指令，builder负责具体的建造过程
    [director buildPerson];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
