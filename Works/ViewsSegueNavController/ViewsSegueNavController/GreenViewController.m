//
//  GreenViewController.m
//  ViewsSegueNavController
//
//  Created by Bibinur on 7/7/16.
//  Copyright © 2016 Bibinur. All rights reserved.
//

#import "GreenViewController.h"

@interface GreenViewController ()
@property (weak, nonatomic) IBOutlet UILabel *addressLabel;
@property (weak, nonatomic) IBOutlet UILabel *presidentName;

@end

@implementation GreenViewController
@synthesize otherListofPresidents;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
 self.addressLabel.text=[NSString stringWithFormat:@"%p", self];
    self.presidentName.text=[self.otherListofPresidents objectAtIndex:0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
