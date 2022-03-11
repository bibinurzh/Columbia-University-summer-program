//
//  Recording.m
//  VoiceRecorder
//
//  Created by Bibinur on 7/11/16.
//  Copyright © 2016 Bibinur. All rights reserved.
//

#import "Recording.h"
#import "ViewController.h"

@interface Recording ()

@end

@implementation Recording
@synthesize date;


- (Recording*)initWithCoder:(NSCoder *)decoder
{
    self = [super init];
    if(self){
        self.date = [decoder decodeObjectOfClass: [Recording class] forKey: @"date"];
    }
    return self;
    
}

- (void)encodeWithCoder:(NSCoder *)encoder
{
    [encoder encodeObject: self.date forKey: @"date"];
    
}

-(Recording*) initWithDate: (NSDate*) aDate;
{
    self=[super init];
    if(self) {
        self.date=aDate;
    }
    return self;
}
-(NSString*) path {
    NSDateFormatter* f=[[NSDateFormatter alloc] init];
    [f setDateFormat:@"yyyyMMddHHmmSS"];
    NSString* dateString =[f stringFromDate:self.date];
    return [NSString stringWithFormat: @ "%@/Documents/%@.caf", NSHomeDirectory(),dateString];
}

-(NSURL*) urlPath
{
    return [NSURL URLWithString:self.path];
}

-(NSString*) name
{
    NSDateFormatter* f=[[NSDateFormatter alloc] init];
    [f setDateFormat:@"yyyyMMddHHmmSS"];
    NSString* dateString =[f stringFromDate:self.date];

    return dateString;
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
