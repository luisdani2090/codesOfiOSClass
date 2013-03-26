//
//  MyCustomCell.m
//  views
//
//  Created by Daniel on 3/25/13.
//  Copyright (c) 2013 Daniel. All rights reserved.
//

#import "MyCustomCell.h"

@implementation MyCustomCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
