//
//  HelloWorldViewController.h
//  Mail
//
//  Created by Harsh Juneja on 2012-10-16.
//  Copyright (c) 2012 Harsh Juneja. All rights reserved.
//

/*#import <UIKit/UIKit.h>

@interface HelloWorldViewController : UIViewController
- (IBAction)openMail:(id)sender;

@end*/
#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
@interface MailViewController : UIViewController <MFMailComposeViewControllerDelegate>
- (IBAction)openMail:(id)sender;
@end
