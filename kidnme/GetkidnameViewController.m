//
//  GetkidnameViewController.m
//  kidnme
//
//  Created by BSA Univ21 on 11/07/14.
//  Copyright (c) 2014 BSA Univ21. All rights reserved.
//

#import "GetkidnameViewController.h"
#import "AppDelegate.h"
#import "ShowkidnameViewController.h"

@interface GetkidnameViewController ()

@end

@implementation GetkidnameViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
      
    }
    return self;
}

- (void)viewDidLoad
{
   [super viewDidLoad];
    NSString *savedkidnme = [[NSUserDefaults standardUserDefaults]
                            stringForKey:@"kidsnme"];
    NSLog(@"Saved kidnme %@",savedkidnme);
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSString *) save:(NSString *)kid;
{
   [[NSUserDefaults standardUserDefaults] setObject:kid forKey:@"kiiid"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    NSString *savedkidnmeval = [[NSUserDefaults standardUserDefaults]
                             stringForKey:@"kidsnme"];
    return savedkidnmeval;
}

- (IBAction)savek:(id)sender {
    
    
    NSString *alp =@"[A-Za-z]+";
    NSPredicate *test =[NSPredicate predicateWithFormat:@"SELF MATCHES %@",alp];
    
    if (![test evaluateWithObject:self.getkidanmetxtfld.text])
    {
        UIAlertView *alert =[[UIAlertView alloc]initWithTitle:@"Welcome!" message:@"Enter only letters." delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        [alert show];
    }
    else
    {
        NSString *kidnme = [_getkidanmetxtfld text];
        [[NSUserDefaults standardUserDefaults] setObject:kidnme forKey:@"kidsnme"];
         [[NSUserDefaults standardUserDefaults] synchronize];
        ShowkidnameViewController *next = [[ShowkidnameViewController alloc] init];
        [self presentViewController:next animated:YES completion:nil];

    }
   
    
        }
@end
