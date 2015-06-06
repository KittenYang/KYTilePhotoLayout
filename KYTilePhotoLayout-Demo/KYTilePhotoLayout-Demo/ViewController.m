//
//  ViewController.m
//  KYTilePhotoLayout-Demo
//
//  Created by Kitten Yang on 6/5/15.
//  Copyright (c) 2015 Kitten Yang. All rights reserved.
//

#import "ViewController.h"
#import "KYTilePhotoCell.h"
#import "KYTilePhotoLayout.h"
#import "UIColor+RandomFlatColors.h"

static NSString *ReuseIdentifier = @"KYTilePhotoCell";

@interface ViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -- RotateToReLayout
-(void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
    
    [super willRotateToInterfaceOrientation:toInterfaceOrientation duration:duration];
    
    KYTilePhotoLayout *layout = (KYTilePhotoLayout *)self.collectionView.collectionViewLayout;
    [layout invalidateLayout];

}


#pragma mark -- UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 30;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    KYTilePhotoCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:ReuseIdentifier forIndexPath:indexPath];
    cell.numberLabel.text = [NSString stringWithFormat:@"%ld",(long)indexPath.item];
    cell.backgroundColor = [UIColor randomFlatColor];
    
    return cell;
    
}


@end
