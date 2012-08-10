//
//  OpenSourceFirstViewController.m
//  customeCell
//
//  Created by Elnaz Shahmehr   on 8/10/12.
//  Copyright (c) 2012 Elnaz Shahmehr  . All rights reserved.
//

#import "OpenSourceFirstViewController.h"
#import "customViewCell.h"

@interface OpenSourceFirstViewController (){
 
    UIImage *image;
}

@end

@implementation OpenSourceFirstViewController


@synthesize mainTableView = ivMainTableView;
@synthesize sectionKeys = ivSectionKeys;
@synthesize sectionContents = ivSectionContents;


- (void)viewDidLoad
{
    [super viewDidLoad];
    NSMutableArray *keys = [[NSMutableArray alloc] init];
	NSMutableDictionary *contents = [[NSMutableDictionary alloc] init];
	
    NSString *monKey = @"New Car";
	NSString *wedKey = @"Old Car";
  
    
	[contents setObject:[NSArray arrayWithObjects:@"BMW", @"Volvo", nil] forKey:monKey];
	[contents setObject:[NSArray arrayWithObjects:@"BMW", @"Volvo", @"BMW", nil] forKey:wedKey];

	

	[keys addObject:monKey];
	[keys addObject:wedKey];
	
    
	
	[self setSectionKeys:keys];
	[self setSectionContents:contents];
    
    }


- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidUnload
{
    
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark Table view methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    NSInteger sections = [[self sectionKeys] count];
    return sections;
    //_week.days.count;
    
}

// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    NSString *key = [[self sectionKeys] objectAtIndex:section];
	NSArray *contents = [[self sectionContents] objectForKey:key];
	NSInteger rows = [contents count];
    
    return rows;
    
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    customViewCell *cell = (customViewCell*)[tableView dequeueReusableCellWithIdentifier:@"customViewCell"];
    
    NSString *key = [[self sectionKeys] objectAtIndex:[indexPath section]];
    NSArray *contents = [[self sectionContents] objectForKey:key];
    NSString *contentForThisRow = [contents objectAtIndex:[indexPath row]];
    
   switch (indexPath.row)
    {
        case 0:
            cell.imageView.image=[UIImage imageNamed:@"bmw1.jpeg"];
            break;
        case 1:
            cell.imageView.image=[UIImage imageNamed:@"volvo.bmp"];
            break;
        case 2:
            cell.imageView.image=[UIImage imageNamed:@"bmw2.jpg"];
            break;
        default:
            break;
   }
    
    
 
   cell.report.text =contentForThisRow;
    cell.car.text =@"Car";
    cell.price.text =@"Price $ ";
    
    return cell;
}




- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    NSMutableArray *carArray = [[ NSMutableArray alloc] initWithObjects: @"New Car", @"Old Car", nil];
    return [carArray objectAtIndex:section];
}

- (UITableViewCellAccessoryType)tableView:(UITableView *)tv accessoryTypeForRowWithIndexPath:(NSIndexPath *)indexPath {
    return UITableViewCellAccessoryDisclosureIndicator;
}


// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}


@end
