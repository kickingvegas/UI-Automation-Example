//
//  YmsViewController2.m
//  uiaexample
//
//  Created by Charles Y. Choi on 2/9/12.
//  Copyright (c) 2012 Yummy Melon Software LLC. All rights reserved.
//

#import "YmsViewController2.h"

@implementation YmsViewController2
@synthesize textField1;
@synthesize textField2;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    UIBarButtonItem *dismissKeyboardButton = [[UIBarButtonItem alloc] initWithTitle:@"Dismiss" style:UIBarButtonItemStyleBordered target:self action:@selector(dismissKeyboard)];

    dismissKeyboardButton.enabled = NO;
    
    self.navigationItem.rightBarButtonItem = dismissKeyboardButton;
    
}

-(void)dismissKeyboard {
    
    if ([self.textField1 isFirstResponder]) {
        [self.textField1 resignFirstResponder];
        self.navigationItem.rightBarButtonItem.enabled = NO;
    }
    
    if ([self.textField2 isFirstResponder]) {
        [self.textField2 resignFirstResponder];
        self.navigationItem.rightBarButtonItem.enabled = NO;
    }
    
}

- (void)viewDidUnload
{
    [self setTextField1:nil];
    [self setTextField2:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    self.navigationItem.rightBarButtonItem.enabled = YES;
    return YES;
}

@end
