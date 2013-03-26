//
//  BlueViewController.h
//  views
//
//  Created by Daniel on 2/1/13.
//  Copyright (c) 2013 Daniel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BlueViewController : UIViewController
- (IBAction)goBack:(id)sender;
@property (strong, nonatomic) NSMutableArray *MakerArray;
@property (strong, nonatomic) NSMutableArray *ModelArray;
@property (strong, nonatomic) NSMutableArray *ImageArray;
@property (strong, nonatomic) IBOutlet UITableView *myTableView;

@end
