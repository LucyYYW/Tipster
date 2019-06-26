//
//  SettingsViewController.m
//  Tipster
//
//  Created by lucyyyw on 6/25/19.
//  Copyright © 2019 lucyyyw. All rights reserved.
//

#import "SettingsViewController.h"
#import "ViewController.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipDefaultBar;


@end

@implementation SettingsViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    self.tipDefaultBar.selectedSegmentIndex = [defaults integerForKey:@"default_tip_percentage"];
}
- (IBAction)OnEdit:(id)sender {
    
    
    NSArray *percentages = @[@(0.15), @(0.2), @(0.22)];
    int tipOption = self.tipDefaultBar.selectedSegmentIndex;
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger: tipOption forKey:@"default_tip_percentage"];
    [defaults synchronize];

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
