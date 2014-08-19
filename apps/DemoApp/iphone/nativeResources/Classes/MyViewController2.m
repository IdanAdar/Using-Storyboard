//
//  MyViewController2.m
//  UsingStoryboardProjectDemoAppIphone
//
//  Created by Idan Adar on 14/08/14.
//
//

#import "MyViewController2.h"
#import "MyViewController.h"
#import "MyCordovaViewController.h"
#import "DemoApp.h"

@interface MyViewController2 ()

@end

@implementation MyViewController2

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

// Format the date and return it.
-(NSString *)prepareDateString {
    NSDate *date = self.datePicker.date;
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"YYYY-MM-dd HH:mm"];
    NSString *stringFromDate = [dateFormatter stringFromDate:date];
    
    return stringFromDate;
}

// Pass the data back to the Cordova WebView.
- (IBAction)addGuestDetails:(UIBarButtonItem *)sender {
    NSString *arrivalDate = [self prepareDateString];
   
    NSDictionary *data = @{@"firstName": self.guestDetailsFirstName, @"lastName": self.guestDetailsLastName, @"arrivalDate":arrivalDate};
    [[WL sharedInstance] sendActionToJS:@"backToWebView" withData:data];
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
