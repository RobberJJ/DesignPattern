//
//  Mark.h
//  DesignPattern_Prototype
//
//  Created by JieFei on 2017/7/2.
//  Copyright © 2017年 RobberJJ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>




@protocol Mark <NSObject>

@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) CGFloat size;
@property (nonatomic, assign) CGPoint location;
@property (nonatomic, assign, readonly) NSUInteger count;
@property (nonatomic,strong, readonly) id<Mark> lastChild;

-(id) initWithLocation:(CGPoint) location;
-(id)copy;
-(void) addMark:(id<Mark>) mark;
-(void) removeMark:(id<Mark>) mark;
-(id<Mark>) childMarkAtIndex:(NSUInteger) index;
@end
