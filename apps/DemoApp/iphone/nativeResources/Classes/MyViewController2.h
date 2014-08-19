//
//  MyViewController2.h
//  UsingStoryboardProjectDemoAppIphone
//
//  Created by Idan Adar on 14/08/14.
//
//

#import <UIKit/UIKit.h>
#import "MyViewController.h"

@interface MyViewController2 : UIViewController

@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (strong, nonatomic) NSString *guestDetailsFirstName;
@property (strong, nonatomic) NSString *guestDetailsLastName;

- (IBAction)addGuestDetails:(UIBarButtonItem *)sender;

@end
