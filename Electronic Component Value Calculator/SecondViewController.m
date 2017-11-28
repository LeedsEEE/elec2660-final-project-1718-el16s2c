//
//  SecondViewController.m
//  Electronic Component Value Calculator
//
//  Created by cashie on 15/11/2017.
//  Copyright © 2017 leeds. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize num1, num2, answer, operand, theNumber; _dispalyLabel;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    [self setNum1:0];
    [self setNum2:0];

    [self setOperand:MULTIPLY];
    [self setAnswer:0.0];
    [self setTheNumber:@"0"];
    [self printNumber];
   
}
-(void)printNumber
{    [_displayLabel setText:theNumber];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)saveNum1
{
    num1 = [theNumber integerValue];
    theNumber = @"0";
    [self printNumber];
}
-(void)saveNum2
{
    num2 = [theNumber integerValue];
    theNumber = @"0";
    [self printNumber];
}


- (IBAction)multiplierOne:(id)sender {
    
    [self saveNum1];
    operand = MULTIPLY;
    
}

- (IBAction)press0:(id)sender {
    theNumber = [theNumber stringByAppendingString:@"0"];
    [self printNumber];}

- (IBAction)press9:(id)sender {
    theNumber = [theNumber stringByAppendingString:@"9"];
    [self printNumber];}


- (IBAction)press8:(id)sender {
    theNumber = [theNumber stringByAppendingString:@"8"];
    [self printNumber];}

- (IBAction)press7:(id)sender {
    theNumber = [theNumber stringByAppendingString:@"7"];
    [self printNumber];}


- (IBAction)press6:(id)sender {
    theNumber = [theNumber stringByAppendingString:@"6"];
    [self printNumber];}

- (IBAction)press5:(id)sender {
    theNumber = [theNumber stringByAppendingString:@"5"];
    [self printNumber];}

- (IBAction)press4:(id)sender {
    theNumber = [theNumber stringByAppendingString:@"4"];
    [self printNumber];}

- (IBAction)press3:(id)sender {
    theNumber = [theNumber stringByAppendingString:@"3"];
    [self printNumber];}

- (IBAction)press2:(id)sender {
    theNumber = [theNumber stringByAppendingString:@"2"];
    [self printNumber];}

- (IBAction)press1:(id)sender {
    theNumber = [theNumber stringByAppendingString:@"1"];
    [self printNumber];}

- (IBAction)press1a:(id)sender {
    theNumber = [theNumber stringByAppendingString:@"1"];
    [self printNumber];}

- (IBAction)calculate:(id)sender {
    
    num2 = [ theNumber integerValue];
    if ( operand == MULTIPLY)
        answer = ((num1,num2)*1);
}

    
- (IBAction)reset:(id)sender {

}

- (IBAction)multiplierTwo:(id)sender {
    
}
- (IBAction)multiplierThree:(id)sender {
    
}
- (IBAction)multiplierFour:(id)sender {
    
}
- (IBAction)multiplierFive:(id)sender {

}

@end
