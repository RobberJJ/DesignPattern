//
//  JJFactoryMinus.m
//  DesignPattern_FactoryMethod
//
//  Created by JieFei on 2017/7/2.
//  Copyright © 2017年 RobberJJ. All rights reserved.
//

#import "JJFactoryMinus.h"
#import "JJCalculateMinus.h"
@implementation JJFactoryMinus
-(id<JJCalculate>)createFactory{
    return [[JJCalculateMinus alloc]init];
}
@end
