//
//  JJFactoryDivide.m
//  DesignPattern_FactoryMethod
//
//  Created by JieFei on 2017/7/2.
//  Copyright © 2017年 RobberJJ. All rights reserved.
//

#import "JJFactoryDivide.h"
#import "JJCalculateDivide.h"
@implementation JJFactoryDivide
-(id<JJCalculate>)createFactory{
    return [[JJCalculateDivide alloc]init];
}
@end
