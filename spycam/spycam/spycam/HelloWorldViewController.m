//
//  HelloWorldViewController.m
//  spycam
//
//  Created by Harsh Juneja on 2012-10-11.
//  Copyright (c) 2012 Harsh Juneja. All rights reserved.
//

#import "HelloWorldViewController.h"

@implementation HelloWorldViewController

- (void)buttonPressed:(UIButton *)button
{
	// Create image picker controller
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    
    // Set source to the camera
	imagePicker.sourceType =  UIImagePickerControllerSourceTypeCamera;
    
    // Delegate is self
	imagePicker.delegate = self;
    
    // Allow editing of image ?
	imagePicker.allowsImageEditing = NO;
    
    // Show image picker
	[self presentModalViewController:imagePicker animated:YES];
    
}

- (void) alertView:(UIAlertView *)alert clickedButtonAtIndex:(NSInteger)buttonIndex
{
	// After saving iamge, dismiss camera
	[self dismissModalViewControllerAnimated:YES];
}

- (void)image:(UIImage *)image didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo
{
    UIAlertView *alert;
    
	// Unable to save the image
    if (error)
        alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                           message:@"Unable to save image to Photo Album."
                                          delegate:self cancelButtonTitle:@"Ok"
                                 otherButtonTitles:nil];
	else // All is well
        alert = [[UIAlertView alloc] initWithTitle:@"Success"
                                           message:@"Image saved to Photo Album."
                                          delegate:self cancelButtonTitle:@"Ok"
                                 otherButtonTitles:nil];
    
    
    [alert show];
    [alert release];
}
// added by Harsh Juneja, tuesday october 13,2012
- (BOOL) startCameraControllerFromViewController: (UIViewController*) controller
                                   usingDelegate: (id <UIImagePickerControllerDelegate,
                                                   UINavigationControllerDelegate>) delegate {
    
    if (([UIImagePickerController isSourceTypeAvailable:
          UIImagePickerControllerSourceTypeCamera] == NO)
        || (delegate == nil)
        || (controller == nil))
        return NO;
    
    
    UIImagePickerController *cameraUI = [[UIImagePickerController alloc] init];
    cameraUI.sourceType = UIImagePickerControllerSourceTypeCamera;
    
    // Displays a control that allows the user to choose picture or
    // movie capture, if both are available:
    cameraUI.mediaTypes =
    [UIImagePickerController availableMediaTypesForSourceType:
     UIImagePickerControllerSourceTypeCamera];
    
    // Hides the controls for moving & scaling pictures, or for
    // trimming movies. To instead show the controls, use YES.
    cameraUI.allowsEditing = NO;
    
    cameraUI.delegate = delegate;
    
    [controller presentModalViewController: cameraUI animated: YES];
    return YES;
}

// added till here ...to be precise the function returning a boolean value.
/*added source : http://developer.apple.com/library/ios/#documentation/AudioVideo/Conceptual/CameraAndPhotoLib_TopicsForIOS/Articles/TakingPicturesAndMovies.html
*/

/* adding more: same link   */
- (IBAction) showCameraUI {
    [self startCameraControllerFromViewController: self
                                    usingDelegate: self];
}
// added till here...Harsh juneja


- (void) imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
	// Access the uncropped image from info dictionary
	UIImage *image = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
    
	// Save image
    UIImageWriteToSavedPhotosAlbum(image, self, @selector(image:didFinishSavingWithError:contextInfo:), nil);
    
	//[picker release];
}

- (id)init
{
    if (self = [super init])
    {
        self.view = [[[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]] autorelease];
		self.view.backgroundColor = [UIColor grayColor];
        
        // Button to activate camera
        button = [[UIButton alloc] initWithFrame:CGRectMake(80, 55, 162, 53)];
        [button setBackgroundImage:[UIImage imageNamed:@"Camera.png"] forState:UIControlStateNormal];
        [button addTarget:self action:@selector(buttonPressed:) forControlEvents: UIControlEventTouchUpInside];
        [self.view addSubview:button];
        [button release];
    }
    
    return self;  
}

- (void)dealloc 
{
    [super dealloc];
}

@end



