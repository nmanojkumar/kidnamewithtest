//
//  ShowkidnameViewController.m
//  kidnme
//
//  Created by BSA Univ21 on 11/07/14.
//  Copyright (c) 2014 BSA Univ21. All rights reserved.
//

#import "ShowkidnameViewController.h"

@interface ShowkidnameViewController ()

@end

@implementation ShowkidnameViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString *savedkidnme = [[NSUserDefaults standardUserDefaults]
                            stringForKey:@"kidsnme"];
    self.Showlbl.text=savedkidnme;

    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
