//
//  MatBorder.m
//  MatBorder Calculator
//
//  Created by Darrell Nicholas on 1/24/15.
//  Copyright (c) 2015 Darrell Nicholas. All rights reserved.
//

#import "MatBorder.h"

@implementation MatBorder

- (void)calculateBorders {
    
    double horizontalBorder = (self.frameWidth - self.imageWidth) / 2.0;
    double verticalBorder = (self.frameHeight - self.imageHeight) / 2.0;
    
    self.leftBorderWidth    = horizontalBorder;
    self.rightBorderWidth   = horizontalBorder;
    
    self.topBorderWidth     = verticalBorder;
    self.bottomBorderWidth  = verticalBorder;
    
}

@end
