//
//  JJCalculateMinus.m
//  DesignPattern_FactoryMethod
//
//  Created by JieFei on 2017/7/2.
//  Copyright © 2017年 RobberJJ. All rights reserved.
//

#import "JJCalculateMinus.h"

@implementation JJCalculateMinus
@synthesize numberA = _numberA;
@synthesize numberB = _numberB;
-(CGFloat)calculate{
    return self.numberA - self.numberB;
}
@end
