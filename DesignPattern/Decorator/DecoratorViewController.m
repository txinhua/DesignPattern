//
//  DecoratorViewController.m
//  DesignPattern
//
//  Created by 唐桂富 on 2019/4/18.
//  Copyright © 2019 jsvc. All rights reserved.
//

#import "DecoratorViewController.h"
#import "ImageTransformFilter.h"
#import "ImageShadowFilter.h"
#import "DecoratorView.h"
#import "UIImage+ImageComponent.h"

@interface DecoratorViewController ()

@end

@implementation DecoratorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"装饰器模式";
    self.view.backgroundColor = [UIColor whiteColor];
    UIImage *image = [UIImage imageNamed:@"ds-pic-bg-mb.jpg"];
    CGAffineTransform roateTransform = CGAffineTransformMakeRotation(M_PI/4.0);
    CGAffineTransform translateTransform = CGAffineTransformMakeTranslation(image.size.width*0.9, -100);
    CGAffineTransform finaltransform = CGAffineTransformConcat(roateTransform, translateTransform);
    ImageTransformFilter *transformedImage = [[ImageTransformFilter alloc]initWithImageComponent:image transform:finaltransform];
    ImageShadowFilter *finalImage = [[ImageShadowFilter alloc]initWithImageComponent:transformedImage];
    DecoratorView *decoratorView = [[DecoratorView alloc]initWithFrame:CGRectMake(0,0, image.size.width, image.size.height)];
    decoratorView.center = CGPointMake(CGRectGetWidth(self.view.bounds)*0.5, CGRectGetHeight(self.view.bounds)*0.5);
    decoratorView.backgroundColor = [UIColor whiteColor];
    [decoratorView setImage:finalImage];
    [self.view addSubview:decoratorView];
    
}

@end
