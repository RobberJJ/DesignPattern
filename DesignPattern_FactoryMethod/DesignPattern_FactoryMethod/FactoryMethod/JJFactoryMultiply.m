//
//  JJFactoryMinus.m
//  DesignPattern_FactoryMethod
//
//  Created by JieFei on 2017/7/2.
//  Copyright © 2017年 RobberJJ. All rights reserved.
//

#import "JJFactoryMultiply.h"
#import "JJCalcuteMultiply.h"
@implementation JJFactoryMultiply
-(id<JJCalculate>)createFactory{
    return [[JJCalcuteMultiply alloc]init];
}
@end
