//
//  JJUserFactory.m
//  DesignPattern_AbstractFactory
//
//  Created by JieFei on 2017/7/8.
//  Copyright © 2017年 RobberJJ. All rights reserved.
//

#import "JJSqlserverFactory.h"
#import "JJSqlserverUser.h"
#import "JJSqlserverDepartment.h"
@implementation JJSqlserverFactory
-(id<JJUser>)createUser{
    return [[JJSqlserverUser alloc]init];
}
-(id<JJDepartment>)createDepartment{
    return [[JJSqlserverDepartment alloc]init];
}

@end
