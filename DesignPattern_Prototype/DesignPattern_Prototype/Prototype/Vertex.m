//
//  Vertex.h
//  DesignPattern_Prototype
//
//  Created by JieFei on 2017/7/2.
//  Copyright © 2017年 RobberJJ. All rights reserved.
//

#import "Vertex.h"
#import "Mark.h"


@interface Vertex ()

@end

@implementation Vertex
@synthesize color = _color;
@synthesize size = _size;
@synthesize location = _location;
@synthesize count = _count;
@synthesize lastChild = _lastChild;

-(id)initWithLocation:(CGPoint)location{
    self = [super init];
    if (self) {
        _location = location;
    }
    return self;
}

-(void)addMark:(id<Mark>)mark{
    
}

-(void)removeMark:(id<Mark>)mark{

}

-(id<Mark>)childMarkAtIndex:(NSUInteger)index{

    return nil;
}


#pragma mark  -
#pragma mark NSCopying delegate method

-(id)copyWithZone:(NSZone *)zone{
    //对象请求其原型([self class]),复制其自身
    Vertex *vertex = [[[self class] alloc] initWithLocation:_location];
    return vertex;
}

@end
