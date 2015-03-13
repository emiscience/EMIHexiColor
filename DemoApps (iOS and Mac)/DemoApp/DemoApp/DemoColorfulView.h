//
//  colourfulView.h
//  DemoApp
//
//  Created by Adrian Sluijters on 13/03/2015.
//  Copyright (c) 2015 EMI Science Limited. All rights reserved.
//

#import <AppKit/AppKit.h>

@interface DemoColorfulView : NSView{
    NSColor *_backgroundColor;
}

@property (nonatomic) NSColor *backgroundColor;

@end
