//
//  BlueViewController.m
//  views
//
//  Created by Daniel on 2/1/13.
//  Copyright (c) 2013 Daniel. All rights reserved.
//

#import "BlueViewController.h"
#import "ViewController.h"
#import "MyCustomCell.h"

@interface BlueViewController ()

@end

@implementation BlueViewController

@synthesize MakerArray, ModelArray, ImageArray, myTableView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
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

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    MyCustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    /*cell.textMaker.text= [MakerArray objectAtIndex:indexPath.row];
    cell.textModel.text=[ModelArray objectAtIndex:indexPath.row];
    [cell.carImage setImage:[UIImage imageNamed: ImageArray [indexPath.row]]];
    cell.labelCar.text=@"Hola";*/
    
    return cell;

}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Details for:" message:[ModelArray objectAtIndex:indexPath.row] delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    
    [alert show];
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    MyCustomCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    return 50;
}

- (IBAction)goBack:(id)sender {
    ViewController *home = [self.storyboard instantiateViewControllerWithIdentifier:@"homeController"];
    [self presentViewController:home animated:YES completion:nil];
}
@end
