//
//  colourfulView.m
//  DemoApp
//
//  Created by Adrian Sluijters on 13/03/2015.
//  Copyright (c) 2015 EMI Science Limited. All rights reserved.
//

#import "DemoColorfulView.h"

@implementation DemoColorfulView

-(NSColor *)backgroundColor{
    return _backgroundColor;
}

-(void)setBackgroundColor:(NSColor *)aBackgroundColor{
    _backgroundColor = aBackgroundColor;
    [self setNeedsDisplay:YES];
}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    [_backgroundColor setFill];
    NSRectFill(dirtyRect);
    // Drawing code here.
}

@end
