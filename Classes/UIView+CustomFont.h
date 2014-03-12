//
//  UIView+CustomFont.h
//  PooKeeper
//
//  Created by Junda on 12/3/14.
//  Copyright (c) 2014 Just2us. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (CustomFont)

-(void)setFontFamily:(NSString*)fontFamily affectSubviews:(BOOL)affectSubviews;
-(void)setFontFamily:(NSString*)fontFamily;

@end
