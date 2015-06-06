//
//  KYTilePhotoLayout.h
//  KYTilePhotoLayout-Demo
//
//  Created by Kitten Yang on 6/5/15.
//  Copyright (c) 2015 Kitten Yang. All rights reserved.
//


#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    Vertical, // 0
    Horizontal, // 1
} KYTilePhotoLayoutDirection;

IB_DESIGNABLE
@interface KYTilePhotoLayout : UICollectionViewLayout

//** The number of column when device orientation is portrait
//** 设备竖直时候的列数
@property(nonatomic,assign)IBInspectable NSUInteger ColOfPortrait;

//** The number of column when device orientation is landscape
//** 设备水平时候的列数
@property(nonatomic,assign)IBInspectable NSUInteger ColOfLandscape;

//** The threshold of double-colume.It's between 0~100.eg,you set DoubleColumnThreshold to 40,it means you will have 40 percent possibility have a double-column-width/height column.
//** 横跨双列出现概率的阈值。比如你指定 DoubleColumnThreshold 为40，那么将会有40%的可能性出现双列宽度或高度的列。
@property(nonatomic,assign)IBInspectable NSUInteger DoubleColumnThreshold;

//** The scroll direction of layout
//** 布局的滚动方向
@property(nonatomic,assign)IBInspectable KYTilePhotoLayoutDirection LayoutDirection;

@end
