//
//  ViewController.m
//  MatBorder Calculator
//
//  Created by Darrell Nicholas on 1/24/15.
//  Copyright (c) 2015 Darrell Nicholas. All rights reserved.
//

#import "ViewController.h"
#import "MatBorder.h"

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
    
    self.frameWidthTextField.delegate = self;
    self.frameHeightTextField.delegate = self;
    self.imageWidthTextField.delegate = self;
    self.imageHeightTextField.delegate = self;
}

- (void)dealloc {
    // unset the delegates because the textField delegate uses assign, not necessary if it uses weak reference
    // this is how it is defined in the header: @property(nonatomic, assign) id<UITextFieldDelegate> delegate
    NSLog(@"dealloc");
    self.frameHeightTextField.delegate = nil;
    self.frameHeightTextField.delegate = nil;
    self.imageWidthTextField.delegate = nil;
    self.imageHeightTextField.delegate = nil;
}

- (IBAction)calculateButtonPressed:(UIButton *)sender {
    [self calculate];
    [self hideKeyboard];
}

- (void)calculate {
    
    MatBorder *matBorder = [[MatBorder alloc] init];
    
    // Get User Input
    matBorder.frameWidth    = [self.frameWidthTextField.text doubleValue];
    matBorder.frameHeight   = [self.frameHeightTextField.text doubleValue];
    matBorder.imageWidth    = [self.imageWidthTextField.text doubleValue];
    matBorder.imageHeight   = [self.imageHeightTextField.text doubleValue];
    
    // calculate the borders from the input
    [matBorder calculateBorders];

    // Update UI
    self.topBorderLabel.text = [@(matBorder.topBorderWidth) stringValue];
    self.leftBorderLabel.text = [@(matBorder.leftBorderWidth) stringValue];
    self.rightBorderLabel.text = [@(matBorder.rightBorderWidth) stringValue];
    self.bottomBorderLabel.text = [@(matBorder.bottomBorderWidth) stringValue];
}

- (void)hideKeyboard {
    [self.view endEditing:NO];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [self calculate];
    [self hideKeyboard];
    
    return YES;
}

@end
