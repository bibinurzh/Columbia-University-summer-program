//
//  ExchangeRate.h
//  CurrencyConverter
//
//  Created by Bibinur on 7/13/16.
//  Copyright © 2016 Bibinur. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface ExchangeRate : NSObject <NSCoding>
@property (strong, nonatomic) NSString* home;
@property (strong, nonatomic) NSString* foreign;
@property (strong, nonatomic) NSNumber* rate;
@property (strong, nonatomic) NSDate* expresOn;
@property (strong) NSMutableDictionary *completionHandlerDictionary;
@property (strong) NSURLSessionConfiguration *ephemeralConfigObject;
-(bool)updateRate;
-(NSString*) exchangeToHome:(NSNumber*) value;
-(NSString*) exchangeToForeign:(NSNumber*) value;
-(void) reverse;
-(NSString* ) name;
-(NSString*) despiction;
-(ExchangeRate*) initWithHome:(NSString*)aHome
foreign:(NSString*) aForeign;
-(void) fetch;

@end
