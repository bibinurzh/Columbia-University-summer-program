//
//  ViewController.h
//  CurrencyConverter
//
//  Created by Bibinur on 7/12/16.
//  Copyright © 2016 Bibinur. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController< UIPickerViewDataSource, UIPickerViewDelegate>
@property (strong, nonatomic) IBOutlet UIPickerView *homePickerView;
@property (strong, nonatomic) IBOutlet UIPickerView *foreignPickerView;
@property (strong, nonatomic) NSArray *homeArray;
@property (strong, nonatomic) NSArray *foreignArray;
@property (strong, nonatomic) NSArray *conversionFactors;
@property (strong, nonatomic) IBOutlet UILabel *homeCurrency;
@property (strong, nonatomic) IBOutlet UILabel *foreignCurrency;
@property (weak, nonatomic) IBOutlet UILabel *foreignLabel;
@property (weak, nonatomic) IBOutlet UITextField *textFieldHome;
@property (strong, nonatomic) IBOutlet UILabel *homeLabel;

@property (strong, nonatomic) NSNumber *num;

- (IBAction)changeButton:(id)sender;
- (IBAction)convertButton:(id)sender;





@end

