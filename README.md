#AnimationLoadingImage
#使用SDWebImage实现的图片下载动画显示效果
### 动画效果
![输入图片说明](http://git.oschina.net/uploads/images/2016/0901/170942_2bc7ad01_727503.gif "在这里输入图片标题")

#使用方法
```
#import "UIImageView+AnimationLoading.h"
```


```
[cell.imgIcon setImageWithAnimationOfUrl:picsArray[indexPath.row] placeHolder:[UIImage imageNamed:@"1.jpg"]];
```