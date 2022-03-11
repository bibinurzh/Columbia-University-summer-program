//
//  ViewController.m
//  ViewsSegueNavController
//
//  Created by Bibinur on 7/7/16.
//  Copyright © 2016 Bibinur. All rights reserved.
//

#import "BlueViewController.h"
#import "GreenViewController.h"
@interface BlueViewController ()
@property (weak, nonatomic) IBOutlet UILabel *addressLabel;
@end

@implementation BlueViewController
@synthesize listOfPresidents;

-(BlueViewController*) initWithCoder:(NSCoder*) aDecoder
{
    self=[super initWithCoder: aDecoder];
    if(self)
    {
        self.listOfPresidents=[[NSMutableArray alloc]init];
        [self.listOfPresidents addObject: @"Washington"];
         [self.listOfPresidents addObject: @"Lincoln"];
         [self.listOfPresidents addObject: @"LBJ"];
    }
    return self;
    
}
-(void) viewDidDisappear:(BOOL)animated
{
    NSLog(@"Archive my list of recordings to a file!!");
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.addressLabel.text=[NSString stringWithFormat:@"%p", self];
    NSLog(@"%@ ", self.listOfPresidents.description);
}

-(void) prepareForSeque:(UIStoryboardSegue* ) segue sender:(id) sender
{GreenViewController* gvc=(GreenViewController*)segue.destinationViewController;
    gvc.otherListofPresidents=self.listOfPresidents;
}
-(void) viewWillDisappear:(BOOL)animated
{
    NSLog(@"Archive my list of recordings to a file!!");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
