//
//  MyAppDelegate.m
//  DemoApp
//
//

#import "DemoApp.h"
#import "WLWebFrameworkInitResult.h"
#import "Cordova/CDVViewController.h"

@interface MyAppDelegate()

@end

@implementation MyAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions 
{
	BOOL result = [super application:application didFinishLaunchingWithOptions:launchOptions];
    
    // A root view controller must be created in application:didFinishLaunchingWithOptions
	self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self.window setRootViewController:[[UIViewController alloc] init]];
    [self.window makeKeyAndVisible];
   
    // Display the Worklight splash screen and initialize the Worklight Web Framework.
    [[WL sharedInstance] showSplashScreen];
    [[WL sharedInstance] initializeWebFrameworkWithDelegate:self];
    
   
    return result;
}

// This method is called after the WL web framework initialization is complete and web resources are ready to be used.
-(void)wlInitWebFrameworkDidCompleteWithResult:(WLWebFrameworkInitResult *)result
{
    if ([result statusCode] == WLWebFrameworkInitResultSuccess) {
        [self wlInitDidCompleteSuccessfully];
    } else {
        [self wlInitDidFailWithResult:result];
    }
}

-(void)wlInitDidCompleteSuccessfully
{
    // Once the Worklight Web Framework is initialized, hide the Worklight splash screen and change the rootViewController to our Cordova View Controller - now in the storyboard.
    [[WL sharedInstance] hideSplashScreen];
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Storyboard" bundle:nil];
    [self.window setRootViewController:[storyboard instantiateInitialViewController]];
}

-(void)wlInitDidFailWithResult:(WLWebFrameworkInitResult *)result
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"ERROR"
                                                  message:[result message]
                                                  delegate:self
                                                  cancelButtonTitle:@"OK"
                                                  otherButtonTitles:nil];
    [alertView show];
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
