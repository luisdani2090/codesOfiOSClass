//
//  ViewController.h
//  views
//
//  Created by Daniel on 2/1/13.
//  Copyright (c) 2013 Daniel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)changeController:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *textUsername;
@property (strong, nonatomic) IBOutlet UITextField *textPassword;

@end
