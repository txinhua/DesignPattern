//
//  ImageComponent.h
//  DesignPattern
//
//  Created by 唐桂富 on 2019/4/25.
//  Copyright © 2019 jsvc. All rights reserved.
//

#import <UIKit/UIkit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ImageComponent <NSObject>
@optional
-(void) drawAsPatternInRect:(CGRect)rect;
-(void) drawAtPoint:(CGPoint)point;
-(void) drawAtPoint:(CGPoint)point blendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha;
-(void) drawInRect:(CGRect)rect;
-(void) drawInRect:(CGRect)rect blendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha;
@end

NS_ASSUME_NONNULL_END
