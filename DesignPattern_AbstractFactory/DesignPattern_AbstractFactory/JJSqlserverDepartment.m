//
//  JJSqlserverDepartment.m
//  DesignPattern_AbstractFactory
//
//  Created by JieFei on 2017/7/8.
//  Copyright © 2017年 RobberJJ. All rights reserved.
//

#import "JJSqlserverDepartment.h"

@implementation JJSqlserverDepartment
-(SQLDepartment *)getDepartment{
    NSLog(@"新建一个Sqlserver的SQLDepartment对象");
    return [[SQLDepartment alloc]init];
}
-(void)insertDepartment:(SQLDepartment *)department{
    NSLog(@"插入一个Sqlserver的SQLDepartment对象");
}
@end
