//
//  JJPersonBuilderDirector.h
//  DesignPattern_Builder
//
//  Created by JieFei on 2017/7/9.
//  Copyright © 2017年 RobberJJ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JJPresionBuilder.h"

@interface JJPersonBuilderDirector : NSObject


@property(nonatomic, strong)JJPresionBuilder builder;

-(void)buildPerson;

@end
