//
//  SettingsViewController.m
//  tipcalculator
//
//  Created by Sindhuja Sridharan on 9/9/14.
//  Copyright (c) 2014 codepath. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *settingTip;

- (IBAction)onDefaultTipSetings:(id)sender;

@end

@implementation SettingsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Default Settings";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    //Loading a key from NSDefaults
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int intValue = [defaults integerForKey:@"settingDefaultTip"];
    self.settingTip.selectedSegmentIndex = intValue;
    
}

- (IBAction)onDefaultTipSetings:(id)sender {
    NSLog(@"Inside Default Tip Settings");
    NSInteger selectedTipAmt = self.settingTip.selectedSegmentIndex;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:selectedTipAmt forKey:@"settingDefaultTip"];
    [defaults synchronize];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
