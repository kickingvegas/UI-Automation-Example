//
//  YmsViewController0.h
//  uiaexample
//
//  Created by Charles Y. Choi on 2/9/12.
//  Copyright (c) 2012 Yummy Melon Software LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YmsViewController0 : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *statusLabel;
@property (strong, nonatomic) IBOutlet UIButton *button0;
@property (strong, nonatomic) IBOutlet UIButton *button1;
@property (strong, nonatomic) IBOutlet UIButton *button2;
@property (strong, nonatomic) IBOutlet UISwitch *switch0;
@property (strong, nonatomic) IBOutlet UISwitch *switch1;



- (void)gotoNextViewController;

@end
