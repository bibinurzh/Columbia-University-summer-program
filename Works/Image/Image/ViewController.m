//
//  ViewController.m
//  Image
//
//  Created by Bibinur on 6/30/16.
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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
    NSLog(@"button pressed");
    static bool toggle = YES;
    UIImage * newImage;
    NSString* path;
    NSBundle *myBundle = [NSBundle mainBundle];
    if (toggle)
    {
    path =[ myBundle pathForResource:@"Фотография 01.01.16 в 2.35 #2" ofType:@"jpg"];
       }
    else {
       path =[ myBundle pathForResource:@"Фотография 01.01.16 в 2.34" ofType:@"jpg"];
    }
    newImage = [UIImage imageWithContentsOfFile:path];
    toggle= ! toggle;
    self.myImageView.image = newImage;
}
@end
