//
//  Person.h
//  BMICalculator
//
//  Created by Bibinur on 6/29/16.
//  Copyright © 2016 Bibinur. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property (strong, nonatomic) NSNumber* weightInKG;
@property (strong, nonatomic) NSNumber* heightInM;
@property (strong, nonatomic) NSNumber* ageInYears;
@property (strong, nonatomic) NSNumber* heightInInches;
@property (strong, nonatomic) NSNumber* weightInPounds;
@property (assign, nonatomic) bool isMen;
@property (assign, nonatomic) bool isMetric;
+(Person*) sharedPersonInstance;

-(NSNumber*) bmi;
-(NSNumber*) bmr;

@end

