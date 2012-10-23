//
//  TouchMotionAppDelegate.h
//  TouchMotion
//
//  Created by Harsh Juneja on 2012-10-19.
//  Copyright (c) 2012 Harsh Juneja. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TouchMotionViewController;

@interface TouchMotionAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) TouchMotionViewController *viewController;

@end
