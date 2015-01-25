//
//  ViewController.m
//  MatBorder Calculator
//
//  Created by Darrell Nicholas on 1/24/15.
//  Copyright (c) 2015 Darrell Nicholas. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *frameWidthTextField;
@property (weak, nonatomic) IBOutlet UITextField *frameHeightTextField;
@property (weak, nonatomic) IBOutlet UITextField *imageWidthTextField;
@property (weak, nonatomic) IBOutlet UITextField *imageHeightTextField;

@property (weak, nonatomic) IBOutlet UILabel *topBorderLabel;
@property (weak, nonatomic) IBOutlet UILabel *leftBorderLabel;
@property (weak, nonatomic) IBOutlet UILabel *bottomBorderLabel;
@property (weak, nonatomic) IBOutlet UILabel *rightBorderLabel;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)calculateButtonPressed:(UIButton *)sender {
    NSLog(@"Calculate!");
    
    NSLog(@"Frame: %@ x %@", self.frameWidthTextField.text, self.frameHeightTextField.text);
    NSLog(@"Image: %@ x %@", self.imageWidthTextField.text, self.imageHeightTextField.text);
}

@end
