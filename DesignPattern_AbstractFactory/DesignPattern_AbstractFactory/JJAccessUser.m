//
//  JJAccessUser.m
//  DesignPattern_AbstractFactory
//
//  Created by JieFei on 2017/7/8.
//  Copyright © 2017年 RobberJJ. All rights reserved.
//

#import "JJAccessUser.h"

@implementation JJAccessUser
-(SQLUser *)getUser{
    NSLog(@"新建一个Access的SQLUser对象");
    return [[SQLUser alloc]init];
}
-(void)insertUser:(SQLUser *)user{
    NSLog(@"插入一个Access的SQLUser对象");
}
@end
