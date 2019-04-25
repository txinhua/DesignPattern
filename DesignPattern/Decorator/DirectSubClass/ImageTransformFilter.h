//
//  ImageTransformFilter.h
//  DesignPattern
//
//  Created by 唐桂富 on 2019/4/25.
//  Copyright © 2019 jsvc. All rights reserved.
//

#import "ImageFilter.h"

NS_ASSUME_NONNULL_BEGIN

@interface ImageTransformFilter : ImageFilter
@property(nonatomic,assign)CGAffineTransform transform;
-(id)initWithImageComponent:(id<ImageComponent>)component transform:(CGAffineTransform)transform;
-(void)apply;
@end

NS_ASSUME_NONNULL_END
