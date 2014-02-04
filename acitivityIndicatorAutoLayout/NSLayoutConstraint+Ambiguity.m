//
//  NSLayoutConstraint+Ambiguity.m
//  FlashCardApp
//
//  Created by Andrew Black on 1/5/14.
//  Copyright (c) 2014 Andrew Black. All rights reserved.
//

#import "NSLayoutConstraint+Ambiguity.h"

@implementation NSLayoutConstraint (Ambiguity)

+ (void)reportAmbiguity:(UIView *)view
{
    if (!view) {
        view = [[UIApplication sharedApplication] keyWindow];
    }
    
    for (UIView *subview in view.subviews) {
        
        NSLog(@"%@ %@", [subview class], subview.hasAmbiguousLayout ? @"AMBIGUOUS" : @"");
        
        if ([subview.subviews count]) {
            [self reportAmbiguity:subview];
        }
    }
}

@end
