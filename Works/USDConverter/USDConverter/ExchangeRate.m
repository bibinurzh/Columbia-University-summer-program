//
//  ExchangeRate.m
//  CurrencyConverter
//
//  Created by Bibinur on 7/13/16.
//  Copyright © 2016 Bibinur. All rights reserved.
//

#import "ExchangeRate.h"
#import "Currency.h"
@interface ExchangeRate ()

@end

@implementation ExchangeRate
@synthesize home;
@synthesize foreign;
@synthesize completionHandlerDictionary;
@synthesize ephemeralConfigObject;


- (void)viewDidLoad {
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    
    // Dispose of any resources that can be recreated.
}
-(ExchangeRate*) initWithHome:(Currency*)aHome
                      foreign:(Currency*) aForeign {
    self=[super init];
    if(self){
        foreign=aForeign;
        home=aHome;
    }
    return self;
}
-(NSString*) description
{
    return [NSString stringWithFormat: @"%@ %@", self.home, self.foreign];
}

-(NSURL*) exchangeRateURL
{
    NSString* urlString = [NSString stringWithFormat: @"https://query.yahooapis.com/v1/public/yql?q=select%%20*%%20from%%20yahoo.finance.xchange%%20where%%20pair%%20in%%20(%%22%@%@%%22)&format=json&env=store%%3A%%2F%%2Fdatatables.org%%2Falltableswithkeys&callback=", self.home, self.foreign];
    return [NSURL URLWithString: urlString];
}
+(NSArray*) allExchangeRates
{
    NSMutableArray* allRates = [[NSMutableArray alloc] init];
    [allRates addObject: [[ExchangeRate alloc] initWithHome: @"USD" foreign: @"KZT"]];
    [allRates addObject: [[ExchangeRate alloc] initWithHome: @"USD" foreign: @"JPY"]];
    [allRates addObject: [[ExchangeRate alloc] initWithHome: @"USD" foreign: @"RUB"]];
    [allRates addObject: [[ExchangeRate alloc] initWithHome: @"USD" foreign: @"EUR"]];
    
    return (NSArray*)allRates;
}




-(void) fetch
{
    NSOperationQueue *mainQueue = [NSOperationQueue mainQueue];
    NSURLSession *delegateFreeSession = [NSURLSession sessionWithConfiguration: self.ephemeralConfigObject delegate: nil delegateQueue: mainQueue];
    for(ExchangeRate* i in [ExchangeRate allExchangeRates]){
        NSLog(@"dispatching %@", [i description]);
        NSURLSessionTask* task = [delegateFreeSession dataTaskWithURL: [i exchangeRateURL]
                                                    completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                                                        NSLog(@"Got response %@ with error %@.\n", response, error);
                                                        id obj = [NSJSONSerialization JSONObjectWithData: data
                                                                                                 options: 0
                                                                                                   error: nil];
                                                        if( [obj isKindOfClass: [NSDictionary class]] ){
                                                            NSDictionary *dict = (NSDictionary*)obj;
                                                            NSLog(@"%@", [dict description]);
                                                        }else{
                                                            NSLog(@"Not a dictionary.");
                                                            exit(1);
                                                        }
                                                        /*NSLog(@"DATA:\n%@\nEND DATA\n",
                                                         [[NSString alloc] initWithData: data
                                                         encoding: NSUTF8StringEncoding]);*/
                                                    }];
        [task resume];
    }
    
}
/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
