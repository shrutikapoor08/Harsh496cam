//
//  TouchMotionViewController.h
//  TouchMotion
//
//  Created by Harsh Juneja on 2012-10-19.
//  Copyright (c) 2012 Harsh Juneja. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TouchMotionViewController : UIViewController {
    UILabel *xCoord;
    UILabel *yCoord;
    CGPoint startPoint;
}
@property (retain, nonatomic) IBOutlet UILabel *xCoord;
@property (retain, nonatomic) IBOutlet UILabel *yCoord;
@property CGPoint startPoint;
@end
