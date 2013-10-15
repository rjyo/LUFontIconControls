//
//  LUFontIconControls.m
//  LUFontIconControls
//
//  Created by Rakuraku Jyo on 2013/09/07.
//  Copyright (c) 2013 Rakuraku Tech. All rights reserved.
//

#import "LUFontIconControls.h"


@implementation LUFontIconControls

- (id)init {
    self = [super init];
    if (self) {
        self.fontName = @"fontcustom";
    }

    return self;
}

+ (LUFontIconControls *)instance {
    static LUFontIconControls *_instance = nil;

    @synchronized (self) {
        if (_instance == nil) {
            _instance = [[self alloc] init];
        }
    }

    return _instance;
}

- (UILabel *)labelWithIcon:(unichar)icon size:(NSInteger)size {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
    unichar *code = malloc(sizeof(unichar) * 1);
    code[0] = icon;
    label.text = [NSString stringWithCharacters:code length:1];
    label.font = [UIFont fontWithName:self.fontName size:size];
    label.textColor = [UIColor blackColor];
    label.backgroundColor = [UIColor clearColor];
    label.textAlignment = NSTextAlignmentCenter;
    free(code);
    return label;
}

- (UIButton *)buttonWithIcon:(unichar)icon size:(NSInteger)size {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    unichar *code = malloc(sizeof(unichar) * 1);
    code[0] = icon;
    [button setTitle:[NSString stringWithCharacters:code length:1] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont fontWithName:self.fontName size:size];
    button.backgroundColor = [UIColor clearColor];
    free(code);
    return button;
}

- (UIImage *)imageWithIcon:(unichar)icon imageSize:(CGSize)imageSize size:(NSInteger)size color:(UIColor *)color {
    UIGraphicsBeginImageContextWithOptions(imageSize, NO, 0.0);

    unichar *code = malloc(sizeof(unichar) * 1);
    code[0] = icon;
    NSString *text = [NSString stringWithCharacters:code length:1];
    free(code);

    UIFont *font = [UIFont fontWithName:self.fontName size:size];

#ifndef __IPHONE_7_0
    CGSize textSize = [text sizeWithFont:font];
#else
    NSMutableParagraphStyle *style = [NSMutableParagraphStyle new];
    [style setAlignment:NSTextAlignmentCenter];

    NSDictionary *attr = @{
        NSParagraphStyleAttributeName : style,
        NSFontAttributeName : font,
        NSForegroundColorAttributeName : color
    };
    CGSize textSize = [text sizeWithAttributes:attr];
#endif

    NSInteger posX = (NSInteger) ((imageSize.width - textSize.width) / 2);
    NSInteger posY = (NSInteger) ((imageSize.height - textSize.height) / 2);

    [color set];

#ifndef __IPHONE_7_0
    [text drawInRect:CGRectMake(posX, posY, textSize.width, textSize.height)
            withFont:font
       lineBreakMode:NSLineBreakByTruncatingMiddle
           alignment:NSTextAlignmentCenter];
#else
    [text drawInRect:CGRectMake(posX, posY, textSize.width, textSize.height) withAttributes:attr];
#endif

    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return image;
}

@end

@implementation UILabel (FontCustom)

+ (UILabel *)labelWithIcon:(unichar)icon size:(NSInteger)size {
    return [[LUFontIconControls instance] labelWithIcon:icon size:size];
}

@end


@implementation UIButton (FontCustom)

+ (UIButton *)buttonWithIcon:(unichar)icon size:(NSInteger)size {
    return [[LUFontIconControls instance] buttonWithIcon:icon size:size];
}

@end


@implementation UIImage (FontCustom)

+ (UIImage *)imageWithIcon:(unichar)icon imageSize:(CGSize)imageSize size:(NSInteger)size color:(UIColor *)color {
    return [[LUFontIconControls instance] imageWithIcon:icon imageSize:imageSize size:size color:color];
}

@end
