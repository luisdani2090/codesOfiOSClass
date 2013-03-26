//
//  MyTableController.m
//  views
//
//  Created by Daniel on 3/25/13.
//  Copyright (c) 2013 Daniel. All rights reserved.
//

#import "MyTableController.h"
#import "MyCustomCell.h"

@interface MyTableController ()

@end

@implementation MyTableController

@synthesize MakerArray, ModelArray, ImageArray;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    MakerArray= [NSMutableArray new];
    [MakerArray addObject:@"Toyota"];
    [MakerArray addObject:@"Toyota"];
    [MakerArray addObject:@"Honda"];
    [MakerArray addObject:@"Chevrolet"];
    
    ModelArray= [NSMutableArray new];
    [ModelArray addObject:@"Prius"];
    [ModelArray addObject:@"Tacoma"];
    [ModelArray addObject:@"Civic"];
    [ModelArray addObject:@"Chevy"];
    
    ImageArray= [NSMutableArray new];
    [ImageArray addObject:@"car1.jpg"];
    [ImageArray addObject:@"car2.jpg"];
    [ImageArray addObject:@"car3.jpg"];
    [ImageArray addObject:@"car4.jpg"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [MakerArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    MyCustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.textMaker.text= [MakerArray objectAtIndex:indexPath.row];
     cell.textModel.text=[ModelArray objectAtIndex:indexPath.row];
     [cell.carImage setImage:[UIImage imageNamed: ImageArray [indexPath.row]]];
    cell.frame=CGRectInset(cell.frame, 320, 77);
    cell.labelCar.text=  @"";
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    MyCustomCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    cell.carImage.hidden=false;
    cell.labelCar.text=  @"Status: Pending";
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Details for:" message:[ModelArray objectAtIndex:indexPath.row] delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
    	
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.row ==1){
        return 105;
    }
    else{
        return 110;
    }
    NSLog(@"Hola");
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate


@end
