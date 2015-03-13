//
//  iOSDemoColorfulView.h
//  DemoApp
//
//  Created by Adrian Sluijters on 13/03/2015.
//  Copyright (c) 2015 EMI Science Limited. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface iOSDemoColorfulView : UIView <UIAppearanceContainer>{
    UIColor *_backgroundColor;
}

@property (nonatomic) UIColor *backgroundColor;

@end
