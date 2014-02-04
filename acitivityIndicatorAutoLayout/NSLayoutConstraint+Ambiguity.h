//
//  NSLayoutConstraint+Ambiguity.h
//  FlashCardApp
//
//  Created by Andrew Black on 1/5/14.
//  Copyright (c) 2014 Andrew Black. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSLayoutConstraint (Ambiguity)

// if view is nil, method reports ambiguity starting from the app's key window
//TODO: remove these calls before shipping app
//??? am I going to use this
+ (void)reportAmbiguity:(UIView *)view;

@end
