//
//  NSColor+NSHexiColor.m
//  DemoApp
//
//  Created by Adrian Sluijters on 13/03/2015.
//  Copyright (c) 2015 EMI Science Limited. All rights reserved.
//

#import "NSColor+EMIHexiColor.h"

@implementation AnyOSColor (NSHexiColor)

+ (AnyOSColor *)colorWithHexRGB:(NSString *) inColorString
{
    AnyOSColor *result = nil;
    unsigned int colorCode = 0;
    unsigned char redByte, greenByte, blueByte;
    
    if (nil != inColorString)
    {
        NSScanner *scanner = [NSScanner scannerWithString:inColorString];
        (void) [scanner scanHexInt:&colorCode];	// ignore error
    }
    redByte		= (unsigned char) (colorCode >> 16);
    greenByte	= (unsigned char) (colorCode >> 8);
    blueByte	= (unsigned char) (colorCode);	// masks off high bits
    
/// iOS/Mac Fix as Mac's AppKit uses colorWithCalibratedRed and iOS uses colorWithRed
#if !TARGET_OS_IPHONE
#define colorWithRed colorWithCalibratedRed
#endif

    result = [AnyOSColor
              colorWithRed:		(float)redByte	/ 0xff
              green:	(float)greenByte/ 0xff
              blue:	(float)blueByte	/ 0xff
              alpha:1.0];
    return result;
}

@end
