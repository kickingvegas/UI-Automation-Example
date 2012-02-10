//
//  YmsViewController1.h
//  uiaexample
//
//  Created by Charles Y. Choi on 2/9/12.
//  Copyright (c) 2012 Yummy Melon Software LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YmsViewController1 : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSArray *tableData;

@property (strong, nonatomic) IBOutlet UITableView *mainTableView;


- (void)gotoNextViewController;
@end
