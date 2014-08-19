//
//  MyNavigationViewController.h
//  UsingStoryboardProjecetDemoAppIphone
//
//  Created by Idan Adar on 14/08/14.
//
//

#import <UIKit/UIKit.h>

@interface MyViewController : UIViewController <UITextViewDelegate>

@property (strong, nonatomic) IBOutlet UITextField *guestFirstName;
@property (strong, nonatomic) IBOutlet UITextField *guestLastName;

@end
