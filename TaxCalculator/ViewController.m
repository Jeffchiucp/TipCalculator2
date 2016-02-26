//
//  AppDelegate.h
//  TaxCalculator
//
//  Created by Jeff_Chiu on 2/26/16.
//  Copyright © 2016 Jeff_Chiu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property double sfTax;
@property double chiTax;
@property double nyTax;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGRect frame= self.segmentedControl.frame;
    [self.segmentedControl setFrame:CGRectMake(frame.origin.x, frame.origin.y, frame.size.width, 100)];
    self.sfTax = 0.0875;
    self.chiTax = 0.1025;
    self.nyTax = 0.08875;
}

- (IBAction)onButtonTapped:(id)sender
{
    NSString *enteredText = self.textField.text;
    int enteredValue = enteredText.intValue;

    if (self.segmentedControl.selectedSegmentIndex == 0)
    {
        double result = enteredValue * self.sfTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
    }
    else if (self.segmentedControl.selectedSegmentIndex == 1)
    {
        double result = enteredValue * self.chiTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
    }
    else
    {
        double result = enteredValue * self.nyTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
    }
}


@end
