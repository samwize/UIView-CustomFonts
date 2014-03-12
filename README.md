# UIView+CustomFonts

[![Version](http://cocoapod-badges.herokuapp.com/v/UIView+CustomFonts/badge.png)](http://cocoadocs.org/docsets/UIView+CustomFonts)
[![Platform](http://cocoapod-badges.herokuapp.com/p/UIView+CustomFonts/badge.png)](http://cocoadocs.org/docsets/UIView+CustomFonts)

## Usage

To run the example project; clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

UIView+CustomFonts is available through [CocoaPods](http://cocoapods.org), to install
it simply add the following line to your Podfile:

    pod "UIView+CustomFonts"

In your view controller, import the UIView category header file.

    #import "UIView+CustomFonts.h"

Set the font family for the view in `viewDidLoad`.

    - (void)viewDidLoad
    {
        [super viewDidLoad];
        [self.view setFontFamily:@"MuseoSans-500"];
    }

## Author

Junda, junda@just2us.com

## License

UIView+CustomFonts is available under the MIT license. See the LICENSE file for more info.

