//
//  ViewController.m
//  WeekOneTimedAssessment
//
//  Created by Kyle Magnesen on 1/9/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "RootViewController.h"
#import "WebViewController.h"

@interface RootViewController ()
@property (strong, nonatomic) IBOutlet UITextField *valueOneTextField;
@property (strong, nonatomic) IBOutlet UITextField *valueTwoTextField;

@property (strong, nonatomic) IBOutlet UILabel *multiplyLabel;
@property (strong, nonatomic) IBOutlet UINavigationItem *navBar;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *webBarButton;

@property NSString *multiply;
@property NSString *answerDisplay;
@property int answer;


@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction)onCalcButtonTapped:(UIButton *)sender {

    [self.view endEditing:YES];

    NSString *userFirstEntry = [self.valueOneTextField text];
    int firstEntry = [userFirstEntry intValue];
    NSString *userSecondEntry = [self.valueTwoTextField text];
    int secondEntry = [userSecondEntry intValue];

    self.answer = firstEntry * secondEntry;

    self.navBar.title = [NSString stringWithFormat:@"%d", self.answer];

//    if (self.answer % 5 == 0) {
//        [self webBarButton.
//    }
// cannot seem to figure out how to get the multiple of five to activate and deactive navBarButton!!!
    }

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton *)sender{

}



@end
