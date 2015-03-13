//
//  AppDelegate.m
//  DemoApp
//
//  Created by Adrian Sluijters on 13/03/2015.
//  Copyright (c) 2015 EMI Science Limited. All rights reserved.
//

#import "AppDelegate.h"
#import "DemoColorfulView.h"
#import "NSColor+EMIHexiColor.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;

@property (weak) IBOutlet DemoColorfulView *viewOne;
@property (weak) IBOutlet DemoColorfulView *viewTwo;
@property (weak) IBOutlet DemoColorfulView *viewThree;
@property (weak) IBOutlet DemoColorfulView *viewFour;
@property (weak) IBOutlet DemoColorfulView *viewFive;

@property (weak) IBOutlet NSTextField *labelOne;
@property (weak) IBOutlet NSTextField *labelTwo;
@property (weak) IBOutlet NSTextField *labelThree;
@property (weak) IBOutlet NSTextField *labelFour;
@property (weak) IBOutlet NSTextField *labelFive;


@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    
    // Colors were taken from iOS7Colors.com, I chose the top row, the first five.

    [[self viewOne] setBackgroundColor:[AnyOSColor colorWithHexRGB:@"FF5E3A"]];
    [[self labelOne] setStringValue:@"<< #FF5E3A"];
    
    [[self viewTwo] setBackgroundColor:[AnyOSColor colorWithHexRGB:@"FF9500"]];
    [[self labelTwo] setStringValue:@"<< #FF9500"];
    
    [[self viewThree]setBackgroundColor:[AnyOSColor colorWithHexRGB:@"FFDB4C"]];
    [[self labelThree] setStringValue:@"<< #FFDB4C"];
    
    NSString *hexOne = @"87FC70";
    NSString *hextwo = @"52EDC7";
    
    [[self viewFour]setBackgroundColor:[AnyOSColor colorWithHexRGB:hexOne]];
    [[self labelFour] setStringValue:[NSString stringWithFormat:@"I got my value from a variable!.. %@ >>", hexOne]];
    
    [[self viewFive]setBackgroundColor:[AnyOSColor colorWithHexRGB:hextwo]];
    [[self labelFive] setStringValue:[NSString stringWithFormat:@"SO DID I! --> %@ >>", hextwo]];
    
    // Insert code here to initialize your application
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
