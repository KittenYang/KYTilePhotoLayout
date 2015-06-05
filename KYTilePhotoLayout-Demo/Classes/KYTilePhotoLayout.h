//
//  KYTilePhotoLayout.h
//  KYTilePhotoLayout-Demo
//
//  Created by Kitten Yang on 6/5/15.
//  Copyright (c) 2015 Kitten Yang. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface KYTilePhotoLayout : UICollectionViewLayout

@property(nonatomic,assign)IBInspectable NSUInteger ColOfPortrait;


@property(nonatomic,assign)IBInspectable NSUInteger ColOfLandscape;

//0~100
@property(nonatomic,assign)IBInspectable NSUInteger DoubleColumnThreshold;


@end
