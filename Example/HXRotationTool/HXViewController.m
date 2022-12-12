//
//  HXViewController.m
//  HXRotationTool
//
//  Created by TheLittleBoy on 12/09/2022.
//  Copyright (c) 2022 TheLittleBoy. All rights reserved.
//

#import "HXViewController.h"
#import "UIInterface+HXRotation.h"

@interface HXViewController ()
{
    UIInterfaceOrientationMask currentVCInterfaceOrientationMask;
}
@end

@implementation HXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    currentVCInterfaceOrientationMask = UIInterfaceOrientationMaskAllButUpsideDown;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)rotationToLandscapeInterface:(id)sender {
    
    currentVCInterfaceOrientationMask = UIInterfaceOrientationMaskAllButUpsideDown;

    [self hx_rotateToInterfaceOrientation:UIInterfaceOrientationLandscapeRight];
    
}

- (IBAction)rotationToPortraitInterface:(id)sender {
    
    currentVCInterfaceOrientationMask = UIInterfaceOrientationMaskAllButUpsideDown;

    [self hx_rotateToInterfaceOrientation:UIInterfaceOrientationPortrait];
}

- (IBAction)lockWithLandscapeInterface:(id)sender {
    
    currentVCInterfaceOrientationMask = UIInterfaceOrientationMaskLandscape;
    
    [self hx_setNeedsUpdateOfSupportedInterfaceOrientations];
}

- (IBAction)lockWithPortraitInterface:(id)sender {
    
    currentVCInterfaceOrientationMask = UIInterfaceOrientationMaskAllButUpsideDown;
    
    [self hx_setNeedsUpdateOfSupportedInterfaceOrientations];
}


#pragma mark -

- (BOOL)shouldAutorotate {
    return YES;
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    
    return UIStatusBarStyleLightContent;
}

- (BOOL)prefersStatusBarHidden {
    return NO;
}

- (UIStatusBarAnimation)preferredStatusBarUpdateAnimation {
    return UIStatusBarAnimationNone;
}

// 支持哪些屏幕方向
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    
    return currentVCInterfaceOrientationMask;
}

// 全面屏底部横条自动隐藏
- (BOOL)prefersHomeIndicatorAutoHidden {
    return YES;
}
@end
