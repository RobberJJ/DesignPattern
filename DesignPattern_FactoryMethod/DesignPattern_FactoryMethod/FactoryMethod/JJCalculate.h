//
//  JJCalculateProtecal.h
//  DesignPattern_FactoryMethod
//
//  Created by JieFei on 2017/7/2.
//  Copyright © 2017年 RobberJJ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@protocol JJCalculate <NSObject>

@property(nonatomic)CGFloat numberA;
@property(nonatomic)CGFloat numberB;
-(CGFloat)calculate;
@end
