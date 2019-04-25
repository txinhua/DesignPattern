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
    CGAffineTransform roateTransform = CGAffineTransformMakeRotation(-M_PI/4.0);
    CGAffineTransform translateTransform = CGAffineTransformMakeTranslation(-image.size.width/2.0, image.size.height/8.0);
    CGAffineTransform finaltransform = CGAffineTransformConcat(roateTransform, translateTransform);
    ImageTransformFilter *transformedImage = [[ImageTransformFilter alloc]initWithImageComponent:image transform:finaltransform];
    ImageShadowFilter *finalImage = [[ImageShadowFilter alloc]initWithImageComponent:transformedImage];
    DecoratorView *decoratorView = [[DecoratorView alloc]initWithFrame:[self.view bounds]];
    [decoratorView setImage:finalImage];
    [self.view addSubview:decoratorView];
    
}

@end
