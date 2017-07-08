//
//  ViewController.m
//  DesignPattern_AbstractFactory
//
//  Created by JieFei on 2017/7/8.
//  Copyright © 2017年 RobberJJ. All rights reserved.
//

#import "ViewController.h"
#import "JJFactory.h"
#import "JJSqlserverFactory.h"
#import "JJAccessFactory.h"
#import "JJDepartment.h"
#import "JJUser.h"

#import "SQLDepartment.h"
#import "SQLUser.h"
typedef id<JJFactory> JJFactory;
typedef id<JJDepartment> JJDepartment;
typedef id<JJUser> JJUser;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    JJFactory factory = [[JJSqlserverFactory alloc]init];
    JJDepartment department = [factory createDepartment];
    [department insertDepartment:[[SQLDepartment alloc]init]];
    [department getDepartment];
    
    JJFactory factory1 = [[JJAccessFactory alloc]init];
    JJDepartment department1 = [factory1 createDepartment];
    [department1 insertDepartment:[[SQLDepartment alloc]init]];
    [department1 getDepartment];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
