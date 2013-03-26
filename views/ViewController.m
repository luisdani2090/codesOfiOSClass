//
//  ViewController.m
//  views
//
//  Created by Daniel on 2/1/13.
//  Copyright (c) 2013 Daniel. All rights reserved.
//

#import "ViewController.h"
#import "BlueViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize textPassword, textUsername;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeController:(id)sender {

        if([textUsername.text isEqualToString:@"test"] && [textPassword.text isEqualToString:@"test"]){
            BlueViewController *blue = [self.storyboard instantiateViewControllerWithIdentifier:@"blueController"];
            [self presentViewController:blue animated:YES completion:nil];
            
        } else{
            UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Invalid Credentials" message:@"Please check your username and password" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
            
            [alert show];
            
        }
    
}

#pragma mark - Custom Methods
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    if(textField==textUsername){
        [textPassword becomeFirstResponder];
    }else if(textField == textPassword){
        NSLog(@"Username %@",textUsername.text);
        NSLog(@"Password %@",textPassword.text);
        
        if([textUsername.text isEqualToString:@"test"] && [textPassword.text isEqualToString:@"test"]){
            BlueViewController *blue = [self.storyboard instantiateViewControllerWithIdentifier:@"blueController"];
            [self presentViewController:blue animated:YES completion:nil];
            
        } else{
            UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Invalid Credentials" message:@"Please check your username and password" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
            
            [alert show];
            
        }
    }
    return YES;
}

@end
