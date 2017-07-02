//
//  ViewController.h
//  DesignPattern_Prototype
//
//  Created by JieFei on 2017/7/2.
//  Copyright © 2017年 RobberJJ. All rights reserved.
//

#import "Dot.h"

@interface Dot ()
@property(nonatomic,copy)NSMutableArray *children;
@end

@implementation Dot
@synthesize color = _color;
@synthesize size = _size;
@synthesize location = _location;
@synthesize count = _count;
@synthesize lastChild = _lastChild;


-(id)initWithLocation:(CGPoint)location{
    self = [super init];
    if (self) {
        _location = location;
        _children = [NSMutableArray arrayWithCapacity:5];
    }
    return self;
}

-(NSUInteger)count{
    return [_children count];
}

-(void)addMark:(id<Mark>)mark{
    [self.children addObject:mark];
}

-(void)removeMark:(id<Mark>)mark{
    if ([self.children containsObject:mark]) {
        [self.children removeObject:mark];
    }
}

-(id<Mark>)childMarkAtIndex:(NSUInteger)index{
    if (self.children.count <= index) {
        return nil;
    }
    return self.children[index];
}

-(id<Mark>)lastChild{
    return [self.children lastObject];
}


#pragma mark  -
#pragma mark NSCopying delegate method

-(id)copyWithZone:(NSZone *)zone{
    //对象请求其原型([self class]),复制其自身
    Dot *dot = [[[self class] alloc] initWithLocation:_location];
    //复制color
    [dot setColor:[UIColor colorWithCGColor:[_color CGColor]]];
    //复制size
    [dot setSize:_size];
    for (id<Mark> mark in self.children) {
        id<Mark> childCopy = [mark copy];
        [dot addMark:childCopy];
    }
    return dot;
}

@end
