//
//  LUControls+FontCustom.h
//  LUControls+FontCustom
//
//  Created by Rakuraku Jyo on 2013/09/07.
//  Copyright (c) 2013 Rakuraku Tech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (FontCustom)
+ (UILabel *)labelWithIcon:(int)icon size:(NSInteger)size;
@end

@interface UIButton (FontCustom)
+ (UIButton *)buttonWithIcon:(int)icon size:(NSInteger)size;
@end

@interface UIImage (FontCustom)
+ (UIImage *)imageWithIcon:(int)icon imageSize:(CGSize)imageSize size:(NSInteger)size color:(UIColor *)color;
@end
