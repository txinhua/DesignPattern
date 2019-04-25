//
//  DecoratorView.h
//  DesignPattern
//
//  Created by 唐桂富 on 2019/4/25.
//  Copyright © 2019 jsvc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ImageComponent.h"

NS_ASSUME_NONNULL_BEGIN

@interface DecoratorView : UIView
@property(nonatomic,strong) id <ImageComponent> image;
@end

NS_ASSUME_NONNULL_END
