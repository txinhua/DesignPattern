//
//  ImageFilter.h
//  DesignPattern
//
//  Created by 唐桂富 on 2019/4/25.
//  Copyright © 2019 jsvc. All rights reserved.
//

#import "UIImage+ImageComponent.h"
NS_ASSUME_NONNULL_BEGIN

@interface ImageFilter : NSObject<ImageComponent>
@property(nonatomic, strong) id <ImageComponent> component;
-(void)apply;
-(id) initWithImageComponent:(id <ImageComponent> )component;
-(id) forwardingTargetForSelector:(SEL)aSelector;
@end

NS_ASSUME_NONNULL_END
