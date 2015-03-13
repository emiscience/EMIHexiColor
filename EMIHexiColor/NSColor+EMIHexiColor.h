//
//  NSColor+NSHexiColor.h
//  DemoApp
//
//  Created by Adrian Sluijters on 13/03/2015.
//  Copyright (c) 2015 EMI Science Limited. All rights reserved.
//
#import <TargetConditionals.h>

#if TARGET_OS_IPHONE
#import <UIKit/UIKit.h>
#define AnyOSColor UIColor
#else
#import <Cocoa/Cocoa.h>
#define AnyOSColor NSColor
#endif
@interface AnyOSColor (NSHexiColor)

+ (AnyOSColor *)colorWithHexRGB:(NSString *)inColorString;

@end
