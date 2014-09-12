//
//  ViewController.m
//  NewMultiply
//
//  Created by Albert Saucedo on 9/12/14.
//  Copyright (c) 2014 Albert Saucedo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *myMultiplier;
@property (weak, nonatomic) IBOutlet UITextField *myNumber;
@property (weak, nonatomic) IBOutlet UILabel *myAnswer;
@property (weak, nonatomic) IBOutlet UISlider *mySlider;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)mySlider:(UISlider *)sender {
    int sliderInt = self.mySlider.value;
    self.myMultiplier.text = [NSString stringWithFormat:@"%d", sliderInt];
}


- (IBAction)onCalculateButtonPressed:(UIButton *)sender {
    int textFieldNumber = [self.myNumber.text intValue];
    int multiplierLabelNumber = [self.myMultiplier.text intValue];
    int answerLabelInt = textFieldNumber * multiplierLabelNumber;
    NSLog(@"%d", answerLabelInt);

    self.myAnswer.text = [NSString stringWithFormat:@"%d", answerLabelInt];

    if (answerLabelInt > 20) {
        self.view.backgroundColor = [UIColor colorWithRed:0.33 green:0.84 blue:0.49 alpha:1];
    } else {
        self.view.backgroundColor = [UIColor colorWithRed:0.98 green:0.98 blue:0.98 alpha:1];
    }

    if (answerLabelInt % 3 == 0 && answerLabelInt % 5 == 0) {
        self.myAnswer.text = @"FizzBuzz";
    } else if (answerLabelInt % 3 == 0) {
        self.myAnswer.text = @"Fizz";
    } else if (answerLabelInt % 5 == 0){
        self.myAnswer.text = @"Buzz";
    }
}

@end
