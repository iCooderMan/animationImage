//
//  ViewController.m
//  AnimationLoadingImage
//
//  Created by Ali on 16/9/1.
//  Copyright © 2016年 Ali. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+AnimationLoading.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imgHome;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (IBAction)btnReloadclick:(id)sender {
        [_imgHome setImageWithAnimationOfUrl:@"http://b.zol-img.com.cn/sjbizhi/images/9/320x510/1449023271209.jpg" placeHolder:nil];
    
}



@end
