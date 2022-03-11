//
//  ViewController.m
//  USDConverter
//
//  Created by Bibinur on 7/15/16.
//  Copyright © 2016 Bibinur. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize currency;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.currency =@[@"KZT", @"EUR", @"RUB", @"JPY"];
     self.conversionFactors=@[ @338.0500, @0.9022, @62.8665, @105.9070 ];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView*) picker {
    return 1;
}

-(NSInteger)pickerView:(UIPickerView*) pickerView numberOfRowsInComponent:(NSInteger)component
{
    return self.currency.count;
}
-(NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return self.currency[row];
}
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    float rate=[self.conversionFactors[row] floatValue];
    float num=[self.usdText.text floatValue];
    float result = rate*num;
    NSString *resultString =[[NSString alloc] initWithFormat:@"=%f", num, result, self.currency[row]];
    self.resultLabel.text=resultString;


}
- (IBAction)convert:(id)sender {
    float rate=[self.conversionFactors[0] floatValue];
    float num=[self.usdText.text floatValue];
    float result = rate*num;
    NSString *resultString =[[NSString alloc] initWithFormat:@"=%f", num, result, self.currency[0]];
    self.resultLabel.text=resultString;
}

- (IBAction)textFieldReturn:(id)sender {
    [sender resignFirstResponder];
   // [self convert];
}

//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
//}
//-(void)pickerView:(UIPickerView*)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    // self.homeCurrency.text=self.homeArray[row],
  //  self.foreignCurrency.text=self.foreignArray[row];
    
//}



    
    



@end
