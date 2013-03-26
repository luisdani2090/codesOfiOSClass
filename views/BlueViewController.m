//
//  BlueViewController.m
//  views
//
//  Created by Daniel on 2/1/13.
//  Copyright (c) 2013 Daniel. All rights reserved.
//

#import "BlueViewController.h"
#import "ViewController.h"

@interface BlueViewController ()

@end

@implementation BlueViewController

@synthesize myTableView, myObjectController;

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
    myObjectController = [MyTableController new];
    myTableView.delegate=myObjectController;
    myTableView.dataSource=myObjectController;
    myObjectController.view = myObjectController.tableView;
   

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goBack:(id)sender {
    ViewController *home = [self.storyboard instantiateViewControllerWithIdentifier:@"homeController"];
    [self presentViewController:home animated:YES completion:nil];
}
@end
