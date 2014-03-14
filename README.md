# UIView+CustomFonts

[![Version](http://cocoapod-badges.herokuapp.com/v/UIView+CustomFonts/badge.png)](http://cocoadocs.org/docsets/UIView+CustomFonts)
[![Platform](http://cocoapod-badges.herokuapp.com/p/UIView+CustomFonts/badge.png)](http://cocoadocs.org/docsets/UIView+CustomFonts)

## Usage

To run the Xcode project; clone the repo, and run `pod install`.


## Installation

UIView+CustomFonts is available through [CocoaPods](http://cocoapods.org), to install, simply add the following line to your Podfile:

    pod "UIView+CustomFonts"

In your view controller, import the UIView category header file.

    #import "UIView+CustomFonts.h"

Set the font family for the view in `viewDidLoad`.

    - (void)viewDidLoad
    {
        [super viewDidLoad];
        [self.view setFontFamily:@"MuseoSans-500"];
    }

The example use [MuseoSans-500](http://www.fontsquirrel.com/fonts/Museo-Sans), a free font to use.

You also have to [add the font](http://samwize.com/2012/09/14/adding-and-using-custom-font-in-ios/) to your project, and add it to info.plist.

## Author

Junda, junda@just2us.com

## License

UIView+CustomFonts is available under the MIT license. See the LICENSE file for more info.



[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/samwize/uiview-customfonts/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

