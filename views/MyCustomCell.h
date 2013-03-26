//
//  MyCustomCell.h
//  views
//
//  Created by Daniel on 3/25/13.
//  Copyright (c) 2013 Daniel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCustomCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UITextField *textMaker;
@property (strong, nonatomic) IBOutlet UITextField *textModel;
@property (strong, nonatomic) IBOutlet UILabel *labelCar;
@property (strong, nonatomic) IBOutlet UIImageView *carImage;

@end
