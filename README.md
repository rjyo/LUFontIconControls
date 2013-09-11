LUFontIconControls
=====================

LUFontIconControls provides an easy way to use icon fonts to replace images in your iOS app. LUFontIconControls provides a simple API to use icon font to generate iOS controls like `UIImage`, `UILabel`, `UIButton`. And by using `UIImage`, you can use it almost anywhere you want, including `UITabBarItem` and etc. 

With LUFontIconControls, you can:

- Choose any color
- Choose any size
- Auto scaling for retina display

And, __LUFontIconControls is also iOS7 ready!__

Usage
=====================

```Objective-C
// UIButton, 0xf102 is the unicode of the icon
UIButton *button = [UIButton buttonWithIcon:0xf102 size:40];
button.frame = ...;
[self.view addSubview:button];

// UIImage
UIImage *image = [UIImage imageWithIcon:0xf101 imageSize:CGSizeMake(50, 50) size:40 color:[UIColor orangeColor]];

// UILabel
UILabel *lbl = [UILabel labelWithIcon:0xf100 size:30];
lbl.frame = ...;
[self.view addSubview:lbl];        
```

Screenshot
=====================
This is what you get when running the Example project bundled.

![screenshot](https://raw.github.com/rjyo/LUFontIconControls/master/Example/screenshot.png)

CocoaPods
=====================
    
Add the following line to your Podfile
    
```ruby    
pod 'LUFontIconControls', :git => 'https://github.com/rjyo/LUFontIconControls.git'
```

Setup
=====================

If you are using fonts other than those built with `fontcutom`, you need to specify the font name.

```Objective-C
[LUFontIconControls instance].fontName = @"FontName";
```

Add the following line to your YourAppName-Info.plist to support custom font. If you are new to this, check this [step-by-step tutorial](http://stackoverflow.com/questions/13029660/use-custom-fonts-in-iphone-app) here.

```XML
<key>UIAppFonts</key>
<array>
    <string>fontcustom.ttf</string>
</array>
```

Build Your Fonts
=====================
Check the `Example` project bundled for building your font from command line. Put your SVG files of your icons under ./Icons and run `make font` to generate the custom icon font. [fontcustom](https://github.com/FontCustom/fontcustom/) cli is need.

Bundled Icons
=====================
Bundled Icons comes from [Streamline Icon Set - Free Pack](https://www.iconfinder.com/iconsets/streamline-icon-set-free-pack). 

LICENSE
=====================
MIT
