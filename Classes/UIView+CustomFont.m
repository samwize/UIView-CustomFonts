//
//  UIView+CustomFont.m
//  PooKeeper
//
//  Created by Junda on 12/3/14.
//  Copyright (c) 2014 Just2us. All rights reserved.
//


/**
 How to use:
 View types affected: UILabel, UIButton, UITextField, UITexView, and UINavigationBar
*/


#import "UIView+CustomFont.h"

@implementation UIView (CustomFont)


/**
 *  Change the font family without changing the font size.
 *
 *  @param fontFamily     The font family name
 *  @param affectSubviews Set NO to affect only this view
 */
-(void)setFontFamily:(NSString*)fontFamily affectSubviews:(BOOL)affectSubviews {
    if ([self isKindOfClass:[UILabel class]]) {
        UILabel *label = (UILabel *)self;
        label.font = [UIFont fontWithName:fontFamily size:label.font.pointSize];
    }

    if ([self isKindOfClass:[UIButton class]]) {
        UIButton *button = (UIButton *)self;
        button.titleLabel.font = [UIFont fontWithName:fontFamily size:button.titleLabel.font.pointSize];
    }
    
    // If to affect subviews, recursively call this method on each subview
    if (affectSubviews) {
        for (UIView *subviews in self.subviews) {
            [subviews setFontFamily:fontFamily affectSubviews:YES];
        }
    }
}

/**
 *  This is a shorthand, where affectSubviews = YES
 *
 *  @param fontFamily The font family name
 */
-(void)setFontFamily:(NSString*)fontFamily {
    [self setFontFamily:fontFamily affectSubviews:YES];
}

@end
