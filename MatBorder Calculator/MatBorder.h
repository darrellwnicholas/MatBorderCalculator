//
//  MatBorder.h
//  MatBorder Calculator
//
//  Created by Darrell Nicholas on 1/24/15.
//  Copyright (c) 2015 Darrell Nicholas. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MatBorder : NSObject

@property (assign, nonatomic) double frameWidth;
@property (assign, nonatomic) double frameHeight;
@property (assign, nonatomic) double imageWidth;
@property (assign, nonatomic) double imageHeight;

@property (assign, nonatomic) double topBorderWidth;
@property (assign, nonatomic) double leftBorderWidth;
@property (assign, nonatomic) double bottomBorderWidth;
@property (assign, nonatomic) double rightBorderWidth;

- (void)calculateBorders;

@end
