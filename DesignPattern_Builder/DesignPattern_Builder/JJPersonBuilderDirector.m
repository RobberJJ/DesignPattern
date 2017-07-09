//
//  JJPersonBuilderDirector.m
//  DesignPattern_Builder
//
//  Created by JieFei on 2017/7/9.
//  Copyright © 2017年 RobberJJ. All rights reserved.
//

#import "JJPersonBuilderDirector.h"
#import "JJPersonFatBuilder.h"
#import "JJPersonThinBuilder.h"


@interface JJPersonBuilderDirector ()

@end

@implementation JJPersonBuilderDirector


-(void)buildPerson{
    NSLog(@"===============director指挥builder开始建造====================");
    [self.builder buildPerson];
}

@end
