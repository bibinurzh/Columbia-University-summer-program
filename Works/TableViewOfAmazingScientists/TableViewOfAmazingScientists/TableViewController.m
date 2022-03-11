//
//  TableViewController.m
//  TableViewOfAmazingScientists
//
//  Created by Bibinur on 7/8/16.
//  Copyright © 2016 Bibinur. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

-(instancetype)initWithCoder:(NSCoder*)aDecoder
{
    self=[ super initWithCoder:aDecoder];
    if(self) {
        self.scientists = [[NSMutableArray alloc] init ];
        [self.scientists addObject: @"R.Frankllin"];
         [self.scientists addObject: @"A. Turing"];
         [self.scientists addObject: @"I. Newton"];
         [self.scientists addObject: @"L. Da Vinci"];
        [self.scientists addObject: @"M. Curie"];
        
        
    }
    return self;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
    - (void)viewDidLoad {
        [super viewDidLoad];
        // Do any additional setup after loading the view.
    }
    -(NSInteger) numberOfSectionsInTableView:(UITableView *) tableView {return 1;
    }
    -(NSInteger)tableView:(UITableView *)tableView numberOfRowsInsection:(NSInteger) section  {
        return[self.scientists count];
    }
        -(UITableViewCell*) tableView:(UITableView*) tableView cellForRowAtIndexPath:(NSIndexPath*) indexPath  {
            UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell" forIndexPath:indexPath];
            
            cell.textLabel.text=[self.scientists objectAtIndex: indexPath.row];
            return cell;
        }
-(void)tableView:(UITableView*) tableView didSelectRowAtIndexPath:(NSIndexPath
                                                                   
                                                                   *)indexPath

// play the audio file taht maps onto the cell

//Recording* r = [self.recording ListObjectAtIndex.row;
//[self play: r]
{
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
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
