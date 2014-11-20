//
//  MYCollectionViewCell.m
//  MYCollectionView
//
//  Created by iXiaobo on 14-11-20.
//  Copyright (c) 2014年 iXiaobo. All rights reserved.
//

#import "MYCollectionViewCell.h"

@implementation MYCollectionViewCell

- (void)awakeFromNib {
    // Initialization code
    
    
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        
        NSArray *arrayOfViews = [[NSBundle mainBundle] loadNibNamed:@"MYCollectionViewCell" owner:self options:nil];
        
        if (arrayOfViews.count < 1)
        {
            return nil;
        }
        
        if (![[arrayOfViews objectAtIndex:0] isKindOfClass:[UICollectionViewCell class]])
        {
            return nil;
        }
        
        self = [arrayOfViews objectAtIndex:0];
    }
    return self;
}


@end
