//
//  UIColor+NSString.m
//  UIColor+NSStringDemo
//
//  Created by txx on 16/11/18.
//  Copyright © 2016年 txx. All rights reserved.
//

#import "UIColor+NSString.h"

@implementation UIColor (NSString)

+(UIColor *)colorWithHex:(NSString *)hexColor
{
    
    if (!hexColor || hexColor.length != 7 || ![hexColor hasPrefix:@"#"])
        return nil;
    
    unsigned int red ,green ,blue ;
    NSRange range ;
    range.length = 2 ;
    
    range.location = 1 ;
    [[NSScanner scannerWithString:[hexColor substringWithRange:range]] scanHexInt:&red];
    range.location = 3 ;
    [[NSScanner scannerWithString:[hexColor substringWithRange:range]] scanHexInt:&green];
    range.location = 5 ;
    [[NSScanner scannerWithString:[hexColor substringWithRange:range]] scanHexInt:&blue];

    return [UIColor colorWithRed:(float)(red/255.0f) green:(float)(green/255.0f) blue:(float)(blue/255.0f) alpha:1];
}
@end
