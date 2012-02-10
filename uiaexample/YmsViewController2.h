//
//  YmsViewController2.h
//  uiaexample
//
//  Created by Charles Y. Choi on 2/9/12.
//  Copyright (c) 2012 Yummy Melon Software LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YmsViewController2 : UIViewController <UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *textField1;
@property (strong, nonatomic) IBOutlet UITextField *textField2;

- (void)dismissKeyboard;

@end
