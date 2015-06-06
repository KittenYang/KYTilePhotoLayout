<p align="left" >
  <img src="logo.png" alt="KYTilePhotoLayout" title="KYTilePhotoLayout">
</p>


![CocoaPods Version](https://img.shields.io/badge/pod-v1.0.0-brightgreen.svg)
![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Platform](https://img.shields.io/badge/platform-iOS-red.svg)


A UICollectionViewLayout with a really interesting image layout algorithm.

一个图片布局算法，实现图片的不规则排列，并且大小不一。具体效果如图:


##垂直滚动：Vertical Scroll

<img src="layout_l_v.gif" width = "500">

<img src="layout_p_v.gif" width = "300">

##水平滚动：Horizontal Scroll

<img src="layout_l_h.gif" width = "500">

<img src="layout_p_h.gif" width = "300">


##Installation

`pod 'KYTilePhotoLayout', '~> 1.0.0'`


##How to use

It's just two files: `KYTilePhotoLayout.h` && `KYTilePhotoLayout.m`. And it's the subclass of `UICollectionViewLayout`.So you can easily use like a normal `UICollectionViewLayout`. eg:

###Use code:

```objc

    KYTilePhotoLayout *tileLayout = [[KYTilePhotoLayout alloc]init];
    tileLayout.ColOfPortrait  = 2;
    tileLayout.ColOfLandscape = 3;
    tileLayout.LayoutDirection =  Vertical;
    self.collectionView.collectionViewLayout = tileLayout;

```

###Use Interface Builder:

Set the layout's class to **KYTilePhotoLayout** .Then you can set the value visibly:

<img src="ScreenShot_1.png" width = "500">

<img src="ScreenShot_2.png" width = "500">


##How to invoke transition between Portrait and Landscape:

```objc
#pragma mark -- RotateToReLayout
-(void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
    
    [super willRotateToInterfaceOrientation:toInterfaceOrientation duration:duration];
    
    KYTilePhotoLayout *layout = (KYTilePhotoLayout *)self.collectionView.collectionViewLayout;
    [layout invalidateLayout];
}

```


