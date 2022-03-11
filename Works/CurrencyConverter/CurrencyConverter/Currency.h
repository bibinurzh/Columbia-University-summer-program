//
//  Currency.h
//  CurrencyConverter
//
//  Created by Bibinur on 7/13/16.
//  Copyright © 2016 Bibinur. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Currency : NSObject <NSCoding>
@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSString* alphaCode;
@property (strong, nonatomic) NSString* symbol;
@property (strong, nonatomic) NSNumberFormatter* formatter;
-(Currency*) initWithName: (NSString*) aName
                alphaCode:(NSString* ) aCode
symbol:(NSString* ) aSymbol
decimalPlaces:(NSNumber* )places;
@end
