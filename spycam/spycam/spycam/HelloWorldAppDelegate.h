//
//  HelloWorldAppDelegate.h
//  spycam
//
//  Created by Harsh Juneja on 2012-10-11.
//  Copyright (c) 2012 Harsh Juneja. All rights reserved.
//

#import <UIKit/UIKit.h>
@class HelloWorldViewController;

@interface HelloWorldAppDelegate : NSObject <UIApplicationDelegate, UIImagePickerControllerDelegate>
{
    UIWindow *window;
    HelloWorldViewController *vc;
}

@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) HelloWorldViewController *vc;


@end
