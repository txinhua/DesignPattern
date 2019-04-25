//
//  ImageShadowFilter.m
//  DesignPattern
//
//  Created by 唐桂富 on 2019/4/25.
//  Copyright © 2019 jsvc. All rights reserved.
//

#import "ImageShadowFilter.h"

@implementation ImageShadowFilter
-(void)apply{
    CGContextRef context =  UIGraphicsGetCurrentContext();
    CGSize offset = CGSizeMake(-25, 15);
    CGContextSetShadow(context, offset, 20.0);
}
@end
