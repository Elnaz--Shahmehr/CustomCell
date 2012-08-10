//
//  customViewCell.m
//  customeCell
//
//  Created by Elnaz Shahmehr   on 8/10/12.
//  Copyright (c) 2012 Elnaz Shahmehr  . All rights reserved.
//

#import "customViewCell.h"

@implementation customViewCell
@synthesize img;
@synthesize price;
@synthesize report;
@synthesize car;



- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
         img.image = [UIImage imageNamed:@"bmw1.jpeg"];
        // Initialization code
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        // Initialization code
        img.image = [UIImage imageNamed:@"bmw1.jpeg"];
    }
    return self;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
