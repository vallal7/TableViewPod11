//
//  SearchTableViewCell.m
//  MusicSearch
//
//  Created by Ganesh, Ashwin on 3/25/17.
//  Copyright © 2017 Ashwin. All rights reserved.
//

#import "SearchTableViewCell.h"

@implementation SearchTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

-(void)addView{
    self.albumName = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 40)];
    [self.contentView addSubview:self.albumName];
}

@end
