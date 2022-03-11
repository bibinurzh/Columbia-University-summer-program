//
//  ViewController.m
//  CurrencyConverter
//
//  Created by Bibinur on 7/12/16.
//  Copyright © 2016 Bibinur. All rights reserved.
//

#import "ViewController.h"
#import "ExchangeRate.h"
#import "Currency.h"
@interface ViewController ()

@end

@implementation ViewController
@synthesize homeArray;
@synthesize foreignArray;
@synthesize conversionFactors;
@synthesize homePickerView;
@synthesize foreignPickerView;
@synthesize homeCurrency;
@synthesize foreignCurrency;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.foreignArray = [[NSArray alloc] initWithObjects:@"USD",@"KZT", @"EUR", @"RUB", @"JPY", nil];
    self.conversionFactors=@[@1.0 , @338.0500,@0.9022,@62.8665, @105.9070 ];
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView*) homePickerView {
    return 2;
}

-(NSInteger)pickerView:(UIPickerView*) pickerView numberOfRowsInComponent:(NSInteger)component
{
    switch (component) {
        case 0 :
            
            return self.foreignArray.count;
            
        case 1:
            return self.homeArray.count;
            
    }
    return 0;
}


-(NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    switch (component) {
        case 0 :
            
            return self.foreignArray[row];
            
        case 1:
            return self.homeArray[row];
                                  }
                                  return 0;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)pickerView:(UIPickerView*)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    switch (component)
    {
        case 0:
            Component* c=homeArray[component][row];
            self.homeLabel.text = c;
    }
    float rate=[self.conversionFactors[row] floatValue];
    float num=[self.textFieldHome.text floatValue];
    float result = rate*num;
    NSString *resultString =[[NSString alloc] initWithFormat:@"%3.2f ", num, result, self.foreignArray[row]];
    self.foreignLabel.text=resultString;

  self.foreignCurrency.text=self.foreignArray[row];
     self.homeCurrency.text=self.homeArray[row];
}

- (IBAction)convertButton:(id)sender {
 
    float rate=[self.conversionFactors[0] floatValue];
    float num=[self.textFieldHome.text floatValue];
    float result = rate*num;
    NSString *resultString =[[NSString alloc] initWithFormat:@"%3.2f ", num, result, self.foreignArray[0]];
    self.foreignLabel.text=resultString;
   // [self.foreignLabel setText:[NSString stringWithFormat:@"%3.2f", num, result, foreignArray[0]]];
  

}

@end
