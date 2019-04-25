//
//  ControllerFactory.m
//  DesignPattern
//
//  Created by 唐桂富 on 2019/4/23.
//  Copyright © 2019 jsvc. All rights reserved.
//

#import "ControllerFactory.h"
typedef NS_ENUM(NSInteger, DesignPatternType) {
    DesignPatternTypePrototype = 1,
    DesignPatternTypeVirtualConstructor,
    DesignPatternTypeAbstractFactory,
    DesignPatternTypeCreator,
};

@implementation ControllerFactory

+(UIViewController *)controllerForPattern:(NSDictionary *)patternInfo{
    if (!patternInfo || !patternInfo[@"id"]) {
        return nil;
    }
    NSString *className = patternInfo[@"class"] ? : NSStringFromClass([UIViewController class]);
    return [[NSClassFromString(className) alloc] init];
}

@end
