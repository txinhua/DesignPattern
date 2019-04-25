//
//  ControllerFactory.h
//  DesignPattern
//
//  Created by 唐桂富 on 2019/4/23.
//  Copyright © 2019 jsvc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ControllerFactory : NSObject
+(UIViewController *)controllerForPattern:(NSDictionary *)patternInfo;
@end

NS_ASSUME_NONNULL_END
