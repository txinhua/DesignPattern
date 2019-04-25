//
//  DecoratorView.m
//  DesignPattern
//
//  Created by 唐桂富 on 2019/4/25.
//  Copyright © 2019 jsvc. All rights reserved.
//

#import "DecoratorView.h"

@implementation DecoratorView
- (void)drawRect:(CGRect)rect {
    [_image drawInRect:rect];
}
@end
