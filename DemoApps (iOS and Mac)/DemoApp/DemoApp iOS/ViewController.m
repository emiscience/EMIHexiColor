//
//  ViewController.m
//  DemoApp iOS
//
//  Created by Adrian Sluijters on 13/03/2015.
//  Copyright (c) 2015 EMI Science Limited. All rights reserved.
//
#import "iOSDemoColorfulView.h"
#import "NSColor+EMIHexiColor.h"
#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *buttonOne;
@property (weak, nonatomic) IBOutlet UIButton *buttonTwo;
@property (weak, nonatomic) IBOutlet UIButton *buttonThree;
@property (weak, nonatomic) IBOutlet UIButton *buttonFour;
@property (weak, nonatomic) IBOutlet UIButton *buttonFive;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    [[self buttonOne] setBackgroundColor:[AnyOSColor colorWithHexRGB:@"FF5E3A"]];
    [[self buttonOne] setTitle:@"FF5E3A" forState:UIControlStateNormal | UIControlStateHighlighted | UIControlStateSelected | UIControlStateDisabled];
    
    [[self buttonTwo] setBackgroundColor:[AnyOSColor colorWithHexRGB:@"FF9500"]];
    [[self buttonTwo] setTitle:@"FF9500" forState:UIControlStateNormal | UIControlStateHighlighted | UIControlStateSelected | UIControlStateDisabled];
    
    [[self buttonThree] setBackgroundColor:[AnyOSColor colorWithHexRGB:@"FFDB4C"]];
    [[self buttonThree] setTitle:@"FFDB4C" forState:UIControlStateNormal | UIControlStateHighlighted | UIControlStateSelected | UIControlStateDisabled];
    
    NSString *hexOne = @"87FC70";
    NSString *hextwo = @"52EDC7";
    
    [[self buttonFour] setBackgroundColor:[AnyOSColor colorWithHexRGB:hexOne]];
    [[self buttonFour] setTitle:[NSString stringWithFormat:@"From Variable (%@)", hexOne] forState:UIControlStateNormal | UIControlStateHighlighted | UIControlStateSelected | UIControlStateDisabled];

    [[self buttonFive] setBackgroundColor:[AnyOSColor colorWithHexRGB:hextwo]];
    [[self buttonFive] setTitle:[NSString stringWithFormat:@"From Variable (%@)", hextwo] forState:UIControlStateNormal | UIControlStateHighlighted | UIControlStateSelected | UIControlStateDisabled];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
