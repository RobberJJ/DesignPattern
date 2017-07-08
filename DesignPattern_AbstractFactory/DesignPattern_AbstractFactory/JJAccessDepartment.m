//
//  JJAccessDepartment.m
//  DesignPattern_AbstractFactory
//
//  Created by JieFei on 2017/7/8.
//  Copyright © 2017年 RobberJJ. All rights reserved.
//

#import "JJAccessDepartment.h"

@implementation JJAccessDepartment
-(SQLDepartment *)getDepartment{
    NSLog(@"新建一个Access的SQLDepartment对象");
    return [[SQLDepartment alloc]init];
}
-(void)insertDepartment:(SQLDepartment *)department{
    NSLog(@"插入一个Access的SQLDepartment对象");
}
@end
