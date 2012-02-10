//
//  YmsViewController0.m
//  uiaexample
//
//  Created by Charles Y. Choi on 2/9/12.
//  Copyright (c) 2012 Yummy Melon Software LLC. All rights reserved.
//

#import "YmsViewController0.h"
#import "YmsViewController1.h"

@implementation YmsViewController0
@synthesize statusLabel;
@synthesize button0;
@synthesize button1;
@synthesize button2;
@synthesize switch0;
@synthesize switch1;


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

    UIBarButtonItem *nextButton = [[UIBarButtonItem alloc] initWithTitle:@"Next" style:UIBarButtonItemStyleBordered target:self action:@selector(gotoNextViewController)];
    
    self.navigationItem.rightBarButtonItem = nextButton;
    

}

- (void)gotoNextViewController {
    NSLog(@"going to view controller 1");
    
    YmsViewController1 *vc = [[YmsViewController1 alloc] initWithNibName:@"YmsViewController1" bundle:nil];
    vc.title = @"VC 1";
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)viewDidUnload
{
    [self setStatusLabel:nil];
    [self setButton1:nil];
    [self setButton2:nil];
    [self setButton0:nil];
    [self setSwitch0:nil];
    [self setSwitch1:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)buttonAction:(id)sender {
    UIButton *button = (UIButton *)sender;
    self.statusLabel.text = [NSString stringWithFormat:@"Tapped %@", button.titleLabel.text];
                             
}

- (IBAction)switchAction:(id)sender {
    NSString *message, *value;
    UISwitch *uswitch = (UISwitch *)sender;
    if (sender == self.switch0) {
        message = @"switch0";
    }
    else {
        message = @"switch1";
    }
    
    if (uswitch.isOn)
        value = @"On";
    else 
        value = @"Off";
    
    
    self.statusLabel.text = [NSString stringWithFormat:@"Tapped %@ to %@", message, value];
}


@end
