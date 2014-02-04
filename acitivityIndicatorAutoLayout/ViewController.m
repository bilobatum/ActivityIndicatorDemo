//
//  ViewController.m
//  acitivityIndicatorAutoLayout
//
//  Created by Andrew Black on 2/4/14.
//  Copyright (c) 2014 Andrew Black. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;
// spacerConstraint is the horizontal spacer constraint between the activity indicator and the gray view
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *spacerConstraint;

@property (nonatomic, strong) NSLayoutConstraint *widthConstraint;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.activityIndicator.hidesWhenStopped = YES;
    [self.activityIndicator startAnimating];
}

- (IBAction)stopButtonTapped:(UIButton *)sender
{
    [self.activityIndicator stopAnimating];
    
    [self.activityIndicator addConstraint:self.widthConstraint];
    self.spacerConstraint.constant = 0;
    
}

- (NSLayoutConstraint *)widthConstraint
{
    if (!_widthConstraint) {
        _widthConstraint = [NSLayoutConstraint constraintWithItem:self.activityIndicator attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:0 multiplier:1.0f constant:0.0f];
    }
    return _widthConstraint;
}


@end
