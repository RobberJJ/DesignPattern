//
//  JJCalculateDivide.m
//  DesignPattern_FactoryMethod
//
//  Created by JieFei on 2017/7/2.
//  Copyright © 2017年 RobberJJ. All rights reserved.
//

#import "JJCalculateDivide.h"

@implementation JJCalculateDivide
@synthesize numberA = _numberA;
@synthesize numberB = _numberB;
-(CGFloat)calculate{
    if (self.numberB == 0) {
        assert(self.numberB);
    }
    return self.numberA/self.numberB;
}
@end
