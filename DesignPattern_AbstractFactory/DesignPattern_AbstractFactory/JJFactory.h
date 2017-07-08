//
//  JJFactory.h
//  DesignPattern_AbstractFactory
//
//  Created by JieFei on 2017/7/8.
//  Copyright © 2017年 RobberJJ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JJUser.h"
#import "JJDepartment.h"
@protocol JJFactory <NSObject>
-(id<JJUser>)createUser;
-(id<JJDepartment>)createDepartment;
@end
