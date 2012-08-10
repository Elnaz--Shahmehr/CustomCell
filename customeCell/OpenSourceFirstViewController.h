//
//  OpenSourceFirstViewController.h
//  customeCell
//
//  Created by Elnaz Shahmehr   on 8/10/12.
//  Copyright (c) 2012 Elnaz Shahmehr  . All rights reserved.
//

#import <UIKit/UIKit.h>
#import "customViewCell.h"

@interface OpenSourceFirstViewController : UIViewController  <UITableViewDelegate, UITableViewDataSource>
{
    UITableView *ivMainTableView;
    
    NSMutableArray *ivSectionKeys;
    NSMutableDictionary *ivSectionContents;
}

// Properties
@property (nonatomic, retain) IBOutlet UITableView *mainTableView;
@property (nonatomic, retain) NSMutableArray *sectionKeys;
@property (nonatomic, retain) NSMutableDictionary *sectionContents;


@end
