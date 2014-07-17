//
//  GetkidnameViewController.h
//  kidnme
//
//  Created by BSA Univ21 on 11/07/14.
//  Copyright (c) 2014 BSA Univ21. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GetkidnameViewController : UIViewController
{
    NSString *savedkid;
}
@property (strong, nonatomic) IBOutlet UITextField *getkidanmetxtfld;
- (IBAction)savek:(id)sender;

@property (strong,nonatomic) NSUserDefaults *defaults;

@end
