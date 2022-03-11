//
//  Person.m
//  BMICalculator
//
//  Created by Bibinur on 6/29/16.
//  Copyright © 2016 Bibinur. All rights reserved.
//


#import "Person.h"

static Person* secretPerson;

@implementation Person
@synthesize weightInKG;
@synthesize heightInM;
@synthesize weightInPounds;
@synthesize heightInInches;
@synthesize ageInYears;
@synthesize isMen;
@synthesize isMetric;

+(Person*) sharedPersonInstance
{
    if(secretPerson == nil){
        secretPerson = [[Person alloc] init];
        secretPerson.heightInM = @1.75;
        secretPerson.weightInKG = @78;
           secretPerson.heightInInches = @70;
           secretPerson.weightInPounds = @73;
    }
    return secretPerson;
}

-(NSString*) description
{
    return [NSString stringWithFormat:@"%p %@ %@", self, self.weightInKG, self.heightInM];
}
-(NSNumber*) bmi

{
    float h= self.heightInM.floatValue;
    float w= self.weightInKG.floatValue;
    if (isMetric == YES){
   float bmi = w/(h*h);
    NSLog(@"BMI = %g", bmi);
    return @(bmi);
    }
        else{
            float bmi = (w*703)/(h*h);
            NSLog(@"BMI = %g", bmi);
            return @(bmi);
        }
}
-(NSNumber*)bmr
{
    float h=self.heightInM.floatValue;
    float w = self.weightInKG.floatValue;
    float age = self.ageInYears.floatValue;
    if (isMetric == YES){
    if (isMen==YES )
    {
    float bmr = 10*w+6.25*h+5-5*age;
        NSLog(@"BMR = %g", bmr);
        return@(bmr);
    }
    else{
        float bmr = 10*w+6.25*h-161-5*age;
        NSLog(@"BMR = %g", bmr);
        return@(bmr);
    }
    }
    else {
        
        if (isMen==YES )
        {
            float bmr = 6.23*w+12.7*h+66-6.8*age;
            NSLog(@"BMR = %g", bmr);
            return@(bmr);
        }
        else{
            float bmr = 4.35*w+4.7*h+655-4.7*age;
            NSLog(@"BMR = %g", bmr);
            return@(bmr);
        }

    }
}



@end


