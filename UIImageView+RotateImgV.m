//
//  UIImageView+RotateImgV.m
//  RotateImgV
//
//  Created by Ashen on 15/11/10.
//  Copyright © 2015年 Ashen. All rights reserved.
//

#import "UIImageView+RotateImgV.h"

@implementation UIImageView (RotateImgV)

- (void)rotate360DegreeWithImageView {
    CABasicAnimation * rotationAnimation;
    rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    rotationAnimation.toValue = [NSNumber numberWithFloat: M_PI * 2.0 ];
    rotationAnimation.duration = 2;
    rotationAnimation.cumulative = YES;
    rotationAnimation.repeatCount = 100000;
    [self.layer addAnimation:rotationAnimation forKey:@"rotationAnimation"];
}
- (void)stopRotate {
    [self.layer removeAllAnimations];
}
@end
