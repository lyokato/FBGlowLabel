# FBGlowLabel

This library allows you to provide labels with glowing effect easily. 

There are some other tutorials or libraries to support glowing effect. But most of them support only *outer glow* simply using *shadow* features of CoreGraphics. Sometime people may feel it's cheap. To make it not cheap, the most important essence is *inner glow*

See following images, these two use only outer glow.

![Blue](http://static.squarespace.com/static/51c2c539e4b032aad7050f2e/t/52821cc3e4b03c032e6c10e8/1384258756906/blue.png?format=750w "Blue")
![White](http://static.squarespace.com/static/51c2c539e4b032aad7050f2e/t/52821cd1e4b05645e63790aa/1384258771249/white.png?format=750w "White")

These are not so bad, but somehow cheap. Then, see following image which is with inner glow. 

![InnerGlow](http://static.squarespace.com/static/51c2c539e4b032aad7050f2e/t/52821ce0e4b03c032e6c1113/1384258840734/glow.png?format=750w "InnerGlowExample")

Perfect!

## APPLICATION EXAMPLE

In my app, "Flashback", glowing effect is attached on most of texts and shapes. This time I pick up one for label.

![Flashback](http://static.squarespace.com/static/51c2c539e4b032aad7050f2e/t/5280c72be4b05ebb58c32579/1384171308891/Screens5.png?format=1500w "Flashback")

For more detail, access to [Flashback Calendar](http://flashback-calendar.com/)

## SETTING UP

If you use CocoaPods, add following line into your Podfile

```
pod 'FBGlowLabel', :git => 'https://github.com/lyokato/FBGlowLabel.git'
```

or directly git clone or download from this page. 

## IMPLEMENTATION

Most of the usage is same as UILabel. And you can set just 4 more properties. too simple.

- glowColor
- glowSize
- innerGlowColor
- innerGlowSize

```
#import <FBGlowLabel/FBGlowLabel.h>

- (void)setupLabel
{
  CGRect frame = CGRectMake(10, 100, 300, 100);
  FBGlowLabel *v = [[FBGlowLabel alloc] initWithFrame:frame];
  v.text = kInitialText;
  v.textAlignment = NSTextAlignmentCenter;
  v.clipsToBounds = YES;
  v.backgroundColor = [UIColor clearColor];
  v.font = [UIFont fontWithName:@"Helvetica-Bold" size:40];
  v.alpha = 1.0;
  v.textColor = UIColor.whiteColor;

  v.glowSize = 20;
  v.glowColor = UIColor.greenColor;

  v.innerGlowSize = 4;
  v.innerGlowColor = UIColor.greenColor;

  self.label = v;
  [self.view addSubview:v];
}
```

## SEE ALSO

If you want more digital styled text, see 
[FBDigitalFont](http://github.com/lyokato/fbdigitalfont).

FBDigitalFont supports some kinds of digital styled fonts.

![LCDFont](http://static.squarespace.com/static/51c2c539e4b032aad7050f2e/t/5294a0aae4b0f601b40f61a0/1385472171287/FBFontLCD.png?format=1500w "LCDFont")


## FOR MORE DETAIL

This repository includes demo project, so you can dig into it for more detail. 

