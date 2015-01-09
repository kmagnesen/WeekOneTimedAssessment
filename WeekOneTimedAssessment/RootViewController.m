//
//  ViewController.m
//  WeekOneTimedAssessment
//
//  Created by Kyle Magnesen on 1/9/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@property (strong, nonatomic) IBOutlet UIView *valueOneTextField;
@property (strong, nonatomic) IBOutlet UIView *valueTwoTextView;

@property (strong, nonatomic) IBOutlet UILabel *multiplyLabel;
@property (strong, nonatomic) IBOutlet UINavigationItem *navBar;

@property NSString *multiply;
@property NSString *answerDisplay;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}
- (IBAction)onCalcButtonTapped:(UIButton *)sender {

//    [self.view endEditing:YES];

    int answer;

    NSString *userFirstEntry = [self.valueOneTextField textInputContextIdentifier];
    int firstEntry = [userFirstEntry intValue];
    NSString *userSecondEntry = [self.valueTwoTextView textInputContextIdentifier];
    int secondEntry = [userSecondEntry intValue];

    answer = firstEntry * secondEntry;

    self.answerDisplay = [NSString stringWithFormat:@"%d", answer];

    self.navBar.title = [NSString stringWithFormat:@"%@", self.answerDisplay];
    

}



@end
