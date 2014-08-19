//
//  MyNavigationViewController.m
//  UsingStoryboardProjecetDemoAppIphone
//
//  Created by Idan Adar on 14/08/14.
//
//

#import "MyViewController.h"
#import "MyViewController2.h"
#import "MyCordovaViewController.h"
#import "DemoApp.h"

@interface MyViewController ()

@end

@implementation MyViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

//  Pass the data to the next ViewController in preparation to returning it to the Cordova WebView.
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.destinationViewController isKindOfClass:[MyViewController2 class]]) {
        MyViewController2 *guestDetails = segue.destinationViewController;

        guestDetails.guestDetailsFirstName = self.guestFirstName.text;
        guestDetails.guestDetailsLastName = self.guestLastName.text;
        
        [self.view endEditing:YES];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end