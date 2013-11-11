#import <UIKit/UIKit.h>

@interface FBGlowLabel : UILabel
@property (nonatomic, assign) CGFloat glowSize;
@property (nonatomic, retain) UIColor *glowColor;
@property (nonatomic, assign) CGFloat innerGlowSize;
@property (nonatomic, retain) UIColor *innerGlowColor;
@end

