//
//  TableViewController.h
//  VoiceRecorder
//
//  Created by Bibinur on 7/12/16.
//  Copyright © 2016 Bibinur. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "Recording.h"
@interface TableViewController : UITableViewController <AVAudioPlayerDelegate>
@property (strong, nonatomic) AVAudioRecorder *recorder;
@property (strong, nonatomic) NSMutableArray* listOfRecordings;
@property (strong, nonatomic) AVAudioPlayer *player;
@property (weak, nonatomic) IBOutlet UILabel *label;
- (void) play: (Recording*) aRecording;
@end
