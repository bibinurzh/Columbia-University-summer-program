//
//  ViewController.h
//  VoiceRecorder
//
//  Created by Bibinur on 7/6/16.
//  Copyright © 2016 Bibinur. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "Recording.h"
@interface ViewController : UIViewController <AVAudioRecorderDelegate>
@property (strong, nonatomic) NSMutableArray* listOfRecordings;
@property (weak, nonatomic) IBOutlet UIProgressView *progressView;
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;
@property (strong, nonatomic) AVAudioRecorder *recorder;
@property (strong, nonatomic) Recording* currentRecording;
@property (strong, nonatomic) NSTimer *timer;




- (IBAction)startButton:(id)sender;
- (IBAction)stopButton:(id)sender;

@end

