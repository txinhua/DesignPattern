//
//  ImageTransformFilter.m
//  DesignPattern
//
//  Created by 唐桂富 on 2019/4/25.
//  Copyright © 2019 jsvc. All rights reserved.
//

#import "ImageTransformFilter.h"
@interface ImageTransformFilter()
{
    CGAffineTransform transform_;
}
@end

@implementation ImageTransformFilter
@synthesize transform = transform_;
-(id)initWithImageComponent:(id<ImageComponent>)component transform:(CGAffineTransform)transform{
    if (self = [super initWithImageComponent:component]) {
        [self setTransform:transform];
    }
    return self;
}
-(void)apply{
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextConcatCTM(context, transform_);
}
@end
