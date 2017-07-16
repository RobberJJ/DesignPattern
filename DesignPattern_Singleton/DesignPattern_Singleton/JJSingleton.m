//
//  JJSingleton.m
//  DesignPattern_Singleton
//
//  Created by JieFei on 2017/7/16.
//  Copyright © 2017年 RobberJJ. All rights reserved.
//

#import "JJSingleton.h"

@implementation JJSingleton

+(instancetype)sharedInstance{
    static JJSingleton *singleton = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        singleton = [[JJSingleton alloc]init];
    });
    return singleton;
}
@end
