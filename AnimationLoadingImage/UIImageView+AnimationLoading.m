//
//  UIImageView+AnimationLoading.m
//  AnimationLoadingImage
//
//  Created by Ali on 16/9/1.
//  Copyright © 2016年 Ali. All rights reserved.
//

#import "UIImageView+AnimationLoading.h"
#import "UIImageView+WebCache.h"
@implementation UIImageView (AnimationLoading)

-(void)setImageWithAnimationOfUrl:(NSString *)strUrl placeHolder:(UIImage *)pImage{
    NSURL *url = [NSURL URLWithString:strUrl];
    
    [self sd_setImageWithURL:url placeholderImage:pImage completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        
        if (cacheType == SDImageCacheTypeNone) {
            self.alpha = 0.f;
            [UIView animateWithDuration:0.5f animations:^{
                self.alpha = 1.f;
                CATransition *transition = [CATransition animation];
                transition.duration = 0.5f;
                transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
                transition.type = kCATransitionFade;
                self.image = image;
                [self.layer addAnimation:transition forKey:@"switchPhoto"];
                
            } completion:^(BOOL finished) {
                
                [self.layer removeAnimationForKey:@"switchPhoto"];
            }];
        }else{
            self.image = image;
        }
    }];

}
@end
