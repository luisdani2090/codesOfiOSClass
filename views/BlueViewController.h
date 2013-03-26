//
//  BlueViewController.h
//  views
//
//  Created by Daniel on 2/1/13.
//  Copyright (c) 2013 Daniel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyTableController.h"

@interface BlueViewController : UIViewController
- (IBAction)goBack:(id)sender;
@property (strong, nonatomic) IBOutlet UITableView *myTableView;
@property (strong, nonatomic) MyTableController *myObjectController;

@end
