//
//  JJPresionBuilder.h
//  DesignPattern_Builder
//
//  Created by JieFei on 2017/7/9.
//  Copyright © 2017年 RobberJJ. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef  NS_ENUM(NSUInteger,BuildOption){
    BuildFat,
    BuildThin
};



@protocol JJPresionBuilder <NSObject>

-(void)buildHead;
-(void)buildBody;
-(void)buildArmLeft;
-(void)buildArmRight;
-(void)buildLegLeft;
-(void)buildLegRight;

- (void)buildPerson;

@end

typedef id<JJPresionBuilder> JJPresionBuilder;
