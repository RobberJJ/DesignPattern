//
//  JJAccessFactory.m
//  DesignPattern_AbstractFactory
//
//  Created by JieFei on 2017/7/8.
//  Copyright © 2017年 RobberJJ. All rights reserved.
//

#import "JJAccessFactory.h"
#import "JJAccessDepartment.h"
#import "JJAccessUser.h"
@implementation JJAccessFactory
-(id<JJUser>)createUser{
    return [[JJAccessUser alloc]init];
}
-(id<JJDepartment>)createDepartment{
    return [[JJAccessDepartment alloc]init];
}
@end
