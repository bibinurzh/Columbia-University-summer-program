//
//  ViewController.m
//  BMICalculator
//
//  Created by Bibinur on 6/28/16.
//  Copyright © 2016 Bibinur. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
        // Do any additional setup after loading the view, typically from a nib.
}



- (IBAction)calculateAction:(id)sender {
    Person* p = [Person sharedPersonInstance];
    p.weightInKG = @(self. weight.text.floatValue);
      p.ageInYears =@(self.age.text.floatValue);
    p.heightInM=@(self.height.text.floatValue);
    NSNumber* bmi = p.bmi;
    //self.bmiLabel.text = bmi.stringValue;
    self.bmiLabel.text=[NSString stringWithFormat:@"%.2f", bmi.floatValue];
    NSNumber* bmr = p.bmr;
    self.bmrLabel.text=[NSString stringWithFormat:@"%.2f", bmr.floatValue];

}


- (IBAction)indexChanged:(id)sender {
      Person* p = [Person sharedPersonInstance];

        if (self.segmentedControl.selectedSegmentIndex==0)
       {
                self.genderLabel.text = @"Male";
           p.isMen=YES;
        }
        else{
                self.genderLabel.text = @"Female";
            p.isMen=NO;
    }
   
}

- (IBAction)scaleChanged:(id)sender {
    Person* p = [Person sharedPersonInstance];

    if (self.segmentedScale.selectedSegmentIndex==0)
    {
    
            self.scaleLabel.text = @"Metric";
        self.heightScale.text=@"Meters";
         self.weightScale.text=@"Kilograms";
            p.isMetric=YES;
    
    } if (self.segmentedScale.selectedSegmentIndex==1)  {
            self.scaleLabel.text = @"Imperial";
        self.heightScale.text=@"Inches";
        self.weightScale.text=@"Pounds";
           p.isMetric=NO;
            
    }
}





@end

