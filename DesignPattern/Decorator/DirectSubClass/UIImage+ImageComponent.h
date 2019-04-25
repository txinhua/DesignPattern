//
//  UIImage+ImageComponent.h
//  DesignPattern
//
//  Created by 唐桂富 on 2019/4/23.
//  Copyright © 2019 jsvc. All rights reserved.
//

#import "ImageComponent.h"
 
NS_ASSUME_NONNULL_BEGIN

@interface UIImage (ImageComponent) <ImageComponent>
-(BOOL)isQRCodeImageInside;
@end

NS_ASSUME_NONNULL_END
