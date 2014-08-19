//
//  MyCordovaViewController.m
//  UsingStoryboardProjectDemoAppIphone
//
//  Created by Idan Adar on 17/08/14.
//
//

#import "Cordova/CDVViewController.h"
#import "MyCordovaViewController.h"
#import "MyViewController.h"

@implementation MyCordovaViewController

//
-(id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        // Required in order to display the Worklight main HTML file when loading the ViewController.
        self.startPage = [[WL sharedInstance] mainHtmlFilePath];
    }
    return self;
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
