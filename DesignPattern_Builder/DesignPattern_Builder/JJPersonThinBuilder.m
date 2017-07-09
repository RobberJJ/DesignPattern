//
//  JJPersonThinBuilder.m
//  DesignPattern_Builder
//
//  Created by JieFei on 2017/7/9.
//  Copyright © 2017年 RobberJJ. All rights reserved.
//

#import "JJPersonThinBuilder.h"
#import "JJHeader.h"
#import "JJBody.h"
#import "JJLeg.h"
#import "JJArm.h"


@interface JJPersonThinBuilder()
@property(nonatomic, strong)JJHeader *header;
@property(nonatomic, strong)JJBody *body;
@property(nonatomic, strong)JJLeg *leg;
@property(nonatomic, strong)JJArm *arm;
@end

@implementation JJPersonThinBuilder


-(instancetype)init{
    self = [super init];
    if (self) {
        _header = [[JJHeader alloc]init];
        _body = [[JJBody alloc]init];
        _leg = [[JJLeg alloc]init];
        _arm = [[JJArm alloc]init];
    }
    return self;
}

-(void)buildPerson{
    [self buildHead];
    [self buildBody];
    [self buildArmLeft];
    [self buildArmRight];
    [self buildLegLeft];
    [self buildLegRight];
}

- (void)buildHead {
    NSLog(@"建造瘦子的头部");
    [self.header work];
}

- (void)buildBody {
    NSLog(@"建造瘦子的身体");
     [self.body work];
}

- (void)buildArmLeft {
    NSLog(@"建造瘦子的左手");
     [self.arm work];
}

- (void)buildArmRight {
    NSLog(@"建造瘦子的右手");
     [self.arm work];
}

- (void)buildLegLeft {
    NSLog(@"建造瘦子的左脚");
     [self.leg work];
}

- (void)buildLegRight {
    NSLog(@"建造瘦子的右脚");
    [self.leg work];
}


@end
