//
//  iOSDemoColorfulView.m
//  DemoApp
//
//  Created by Adrian Sluijters on 13/03/2015.
//  Copyright (c) 2015 EMI Science Limited. All rights reserved.
//

#import "iOSDemoColorfulView.h"

@implementation iOSDemoColorfulView{
    
}

-(UIColor *)backgroundColor{
    return _backgroundColor;
}

-(void)setBackgroundColor:(UIColor *)aBackgroundColor{
    _backgroundColor = aBackgroundColor;
    [self setNeedsDisplay];
}

-(void)drawRect:(CGRect)rect forViewPrintFormatter:(UIViewPrintFormatter *)formatter{
    [_backgroundColor setFill];
    UIRectFill(rect);
}

@end
