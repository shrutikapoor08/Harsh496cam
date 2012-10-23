//
//  TouchMotionViewController.m
//  TouchMotion
//
//  Created by Harsh Juneja on 2012-10-19.
//  Copyright (c) 2012 Harsh Juneja. All rights reserved.
//

#import "TouchMotionViewController.h"




@implementation TouchMotionViewController
@synthesize xCoord, yCoord, startPoint;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void) TouchesBegan:(NSSet *)Touches
            withEvent:(UIEvent *)event {
    UITouch *theTouch = [Touches anyObject];
    startPoint = [theTouch locationInView:self.view];
    CGFloat x = startPoint.x;
    CGFloat y = startPoint.y;
    xCoord.text = [NSString stringWithFormat:@"x = %f", x];
    yCoord.text = [NSString stringWithFormat:@"y = %f", y];
}
- (void) TouchesEnded:(NSSet *)Touches
            withEvent:(UIEvent *)event {
    UITouch *theTouch = [Touches anyObject];
    CGPoint endPoint = [theTouch locationInView:self.view];
    xCoord.text = [NSString stringWithFormat:
                   @"start = %f, %f", startPoint.x, startPoint.y];
    yCoord.text = [NSString stringWithFormat:
                   @"end = %f, %f", endPoint.x, endPoint.y];
}

@end
