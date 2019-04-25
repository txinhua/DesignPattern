//
//  ImageFilter.m
//  DesignPattern
//
//  Created by 唐桂富 on 2019/4/25.
//  Copyright © 2019 jsvc. All rights reserved.
//

#import "ImageFilter.h"

@interface ImageFilter ()
{
    id<ImageComponent> component_;
}
@end

@implementation ImageFilter

-(id) initWithImageComponent:(id<ImageComponent>)component{
    self = [super init];
    if (self) {
        [self setComponent:component];
    }
    return self;
}

-(void)setComponent:(id<ImageComponent>)component{
    component_ = component;
}

-(void)apply{
    
}

-(id)forwardingTargetForSelector:(SEL)aSelector{
    NSString *selectorName = NSStringFromSelector(aSelector);
    if ([selectorName hasPrefix:@"draw"]) {
        [self apply];
    }
    return component_;
}

@end
