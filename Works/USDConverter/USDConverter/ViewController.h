//
//  ViewController.h
//  USDConverter
//
//  Created by Bibinur on 7/15/16.
//  Copyright © 2016 Bibinur. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController < UIPickerViewDataSource, UIPickerViewDelegate>

@property (strong, nonatomic) NSArray *currency;
@property (strong, nonatomic) NSArray *conversionFactors;
@property (strong, nonatomic) IBOutlet UITextField *usdText;
@property (strong, nonatomic) IBOutlet UILabel *resultLabel;
@property (strong, nonatomic) IBOutlet UIPickerView *picker;
- (IBAction)convert:(id)sender;
- (IBAction)textFieldReturn:(id)sender;

@end

