//
//  JJDepartment.h
//  DesignPattern_AbstractFactory
//
//  Created by JieFei on 2017/7/8.
//  Copyright © 2017年 RobberJJ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SQLDepartment.h"
@protocol JJDepartment <NSObject>
-(void)insertDepartment:(SQLDepartment *)department;
-(SQLDepartment *)getDepartment;
@end
