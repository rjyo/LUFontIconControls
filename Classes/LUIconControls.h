//
//  LUControls+FontCustom.h
//  LUControls+FontCustom
//
//  Created by Rakuraku Jyo on 2013/09/07.
//  Copyright (c) 2013 Rakuraku Tech. All rights reserved.
//

@interface LUIconControls : NSObject
@property(nonatomic, copy) NSString *fontName;

+ (LUIconControls *)instance;

@end

@interface UILabel (FontCustom)
+ (UILabel *)labelWithIcon:(unichar)icon size:(NSInteger)size;
@end

@interface UIButton (FontCustom)
+ (UIButton *)buttonWithIcon:(unichar)icon size:(NSInteger)size;
@end

@interface UIImage (FontCustom)
+ (UIImage *)imageWithIcon:(unichar)icon imageSize:(CGSize)imageSize size:(NSInteger)size color:(UIColor *)color;
@end

