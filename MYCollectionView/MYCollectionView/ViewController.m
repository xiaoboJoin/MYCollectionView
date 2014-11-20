//
//  ViewController.m
//  MYCollectionView
//
//  Created by iXiaobo on 14-11-20.
//  Copyright (c) 2014年 iXiaobo. All rights reserved.
//

#import "ViewController.h"
#import "MYCollectionViewHeaderView.h"


@interface ViewController ()
{
    NSMutableArray *_dataSourceArray;
    
}
@property (weak, nonatomic) IBOutlet UICollectionView *_myCollectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self._myCollectionView setDelegate:self];
    [self._myCollectionView setDataSource:self];
    [self._myCollectionView registerClass:[MYCollectionViewCell class] forCellWithReuseIdentifier:@"MYCollectionViewCell"];
    
    
    NSArray *bodyTypeArray = @[@"全部",@"小型犬",@"中型犬",@"大型犬"];
    NSArray *functionTypeArray = @[@"全部",@"吊牌挂件",@"梳子头花",@"伴侣犬",@"牧羊犬",@"梗类犬",@"守卫犬"];
    NSArray *bodySubTypeArray = @[@"全部",@"小型犬",@"中型犬",@"大型犬"];
    _dataSourceArray = [[NSMutableArray alloc] initWithObjects:bodyTypeArray,functionTypeArray,bodySubTypeArray, nil];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    NSInteger count =  ((NSArray *)[_dataSourceArray objectAtIndex:section]).count;
    
    return count;

}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return [_dataSourceArray count];
}

- (MYCollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
     MYCollectionViewCell *cell = (MYCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"MYCollectionViewCell" forIndexPath:indexPath];
    cell._titleLabel.text = [[_dataSourceArray objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
    return cell;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    UICollectionReusableView *reusableview = nil;
    
    if (kind == UICollectionElementKindSectionHeader){
        
        MYCollectionViewHeaderView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"HeaderView" forIndexPath:indexPath];
        

        headerView._titleLabel.text = @"体型";
        
        reusableview = headerView;
    }
    return reusableview;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(90, 30);
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{

    
    return UIEdgeInsetsMake(5, 10, 5, 10);
    
}


//
//
//- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForFooterInSection:(NSInteger)section
//{
//    
//}

//- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section
//{
//    return CGSizeMake(self.view.bounds.size.width, 30);
//    
//}





//
//
//
//
//- (void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath
//{
//    
//    
//    
//    
//}
//- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
//{
//    
//    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"TradeStatisticsStoryboard" bundle:nil];
//    
//    [self.navigationController pushViewController:[storyboard instantiateInitialViewController] animated:YES];
//}
//
//
//
//- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath
//{
//    return NO;
//}
//



@end
