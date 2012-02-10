//
//  YmsViewController1.m
//  uiaexample
//
//  Created by Charles Y. Choi on 2/9/12.
//  Copyright (c) 2012 Yummy Melon Software LLC. All rights reserved.
//

#import "YmsViewController1.h"
#import "YmsViewController2.h"

@implementation YmsViewController1
@synthesize mainTableView;
@synthesize tableData;

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
    
    
    if (self.tableData == nil) {
        NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:5];
        
        NSDictionary *dict = [[NSDictionary alloc] initWithObjectsAndKeys:
                              @"California", @"state"
                              , @"Sacramento", @"capital"
                              , nil];
        [array addObject:dict];
        
        dict = [[NSDictionary alloc] initWithObjectsAndKeys:
                @"Virginia", @"state"
                , @"Richmond", @"capital"
                , nil];
        [array addObject:dict];
        
        dict = [[NSDictionary alloc] initWithObjectsAndKeys:
                @"Idaho", @"state"
                , @"Boise", @"capital"
                , nil];
        [array addObject:dict];
        
        dict = [[NSDictionary alloc] initWithObjectsAndKeys:
                @"Nevada", @"state"
                , @"Carson City", @"capital"
                , nil];
        [array addObject:dict];
        
        dict = [[NSDictionary alloc] initWithObjectsAndKeys:
                @"Texas", @"state"
                , @"Austin", @"capital"
                , nil];
        [array addObject:dict];
        
        self.tableData = array;
    }
    

        

}

- (void)viewDidUnload
{
    [self setMainTableView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}


- (void)gotoNextViewController {
    NSLog(@"going to view controller 2");
    
    YmsViewController2 *vc = [[YmsViewController2 alloc] initWithNibName:@"YmsViewController2" bundle:nil];
    vc.title = @"VC 2";
    [self.navigationController pushViewController:vc animated:YES];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *MyIdentifier = @"MyIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:MyIdentifier];
    }
    
    NSDictionary *dict = (NSDictionary *)[self.tableData objectAtIndex:indexPath.row];
    
    cell.textLabel.text = (NSString *)[dict objectForKey:@"state"];
    cell.detailTextLabel.text = (NSString *)[dict objectForKey:@"capital"];
    
    
    return cell;
}




- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSInteger result;
    
    result = self.tableData.count;
    return result;
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    NSInteger result = 1;
    return result;
}

@end
