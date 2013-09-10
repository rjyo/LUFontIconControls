//
//  LUControls+FontCustom.m
//  LUControls+FontCustom
//
//  Created by Rakuraku Jyo on 2013/09/07.
//  Copyright (c) 2013 Rakuraku Tech. All rights reserved.
//

#import "LUControls+FontCustom.h"

@implementation UILabel (FontCustom)

+ (UILabel *)labelWithIcon:(int)icon size:(NSInteger)size {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
    unichar *code = malloc(sizeof(unichar) * 1);
    code[0] = 0xf100 + icon;
    label.text = [NSString stringWithCharacters:code length:1];
    label.font = [UIFont fontWithName:@"fontcustom" size:size];
    label.textColor = [UIColor blackColor];
    label.backgroundColor = [UIColor clearColor];
    label.textAlignment = NSTextAlignmentCenter;
    free(code);
    return label;
}

@end


@implementation UIButton (FontCustom)

+ (UIButton *)buttonWithIcon:(int)icon size:(NSInteger)size {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    unichar *code = malloc(sizeof(unichar) * 1);
    code[0] = 0xf100 + icon;
    [button setTitle:[NSString stringWithCharacters:code length:1] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont fontWithName:@"fontcustom" size:size];
    button.backgroundColor = [UIColor clearColor];
    free(code);
    return button;
}

@end


@implementation UIImage (FontCustom)

+ (UIImage *)imageWithIcon:(int)icon imageSize:(CGSize)imageSize size:(NSInteger)size color:(UIColor *)color {
    UIGraphicsBeginImageContextWithOptions(imageSize, NO, 0.0);
    
    unichar *code = malloc(sizeof(unichar) * 1);
    code[0] = 0xf100 + icon;
    NSString *text = [NSString stringWithCharacters:code length:1];
    UIFont *font = [UIFont fontWithName:@"fontcustom" size:size];
    CGSize textSize = [text sizeWithFont:font];
    
    NSInteger posX = (NSInteger) ((imageSize.width - textSize.width) / 2);
    NSInteger posY = (NSInteger) ((imageSize.height - textSize.height) / 2);
    
    [color set];
    
    [text drawInRect:CGRectMake(posX, posY, textSize.width, textSize.height)
            withFont:font
       lineBreakMode:NSLineBreakByTruncatingMiddle
           alignment:NSTextAlignmentCenter];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
