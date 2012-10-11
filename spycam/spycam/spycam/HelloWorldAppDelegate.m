//
//  HelloWorldAppDelegate.m
//  spycam
//
//  Created by Harsh Juneja on 2012-10-11.
//  Copyright (c) 2012 Harsh Juneja. All rights reserved.
//

#import "HelloWorldAppDelegate.h"
#import "HelloWorldViewController.h"

@implementation HelloWorldAppDelegate
@synthesize window, vc;

- (void)applicationDidFinishLaunching:(UIApplication *)application
{
    // Create and initialize the window
	window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
	// Create primary view controller
	vc = [[HelloWorldViewController alloc] init];
	[window addSubview:vc.view];
    
    [window makeKeyAndVisible];
    
}

- (void)dealloc
{
    [window release];
    [super dealloc];
}


@end
