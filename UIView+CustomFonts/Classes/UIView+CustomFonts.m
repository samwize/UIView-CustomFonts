//
//  UIView+CustomFonts.m
//
//  Created by Junda on 12/3/14.
//  Copyright (c) 2014 Just2us. All rights reserved.
//


/**
 View types affected: 
 - UILabel
 - UIButton
 - UITextField
 - UITexView
 - UINavigationBar
*/


#import "UIView+CustomFonts.h"

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
    
    if ([self isKindOfClass:[UITextField class]]) {
        UITextField *textfield = (UITextField *)self;
        textfield.font = [UIFont fontWithName:fontFamily size:textfield.font.pointSize];
    }

    if ([self isKindOfClass:[UITextView class]]) {
        UITextView *textview = (UITextView *)self;
        textview.font = [UIFont fontWithName:fontFamily size:textview.font.pointSize];
    }
    
    if ([self isKindOfClass:[UINavigationBar class]]) {
        UINavigationBar *navbar = (UINavigationBar *)self;
        UIFont *font = (navbar.titleTextAttributes)[NSFontAttributeName];
        NSMutableDictionary *attributes = [NSMutableDictionary dictionaryWithDictionary:navbar.titleTextAttributes];
        [attributes setValue:[UIFont fontWithName:fontFamily size:font.pointSize] forKey:NSFontAttributeName];
        navbar.titleTextAttributes = [NSDictionary dictionaryWithDictionary:attributes];
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
