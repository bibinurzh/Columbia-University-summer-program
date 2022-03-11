//
//  Recording.h
//  VoiceRecorder
//
//  Created by Bibinur on 7/11/16.
//  Copyright © 2016 Bibinur. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Recording : NSObject <NSCoding>
@property (strong, nonatomic) NSDate* date;
@property (readonly, nonatomic) NSString* path;
@property (readonly, nonatomic) NSString* name;
//~/Documants/yyyyMMddHHmmSS.caf
@property (readonly, nonatomic) NSURL* urlPath;

-(Recording*) initWithDate: (NSDate*) aDate;



//Recording* r =[[Recording alloc] initWithDate:[NSDate date]];
//NSString* p =r.path;
//NSURL* url=r.url;
@end