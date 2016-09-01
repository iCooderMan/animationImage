//
//  UIImageView+AnimationLoading.h
//  AnimationLoadingImage
//
//  Created by Ali on 16/9/1.
//  Copyright © 2016年 Ali. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (AnimationLoading)
/**
 *  @author Ali
 *
 *  下载图片 并且动画显示
 *
 *  @param strUrl 图片地址(字符串哦)
 *  @param pImage 占位图片
 */
-(void)setImageWithAnimationOfUrl:(NSString *)strUrl placeHolder:(UIImage *)pImage;

@end
