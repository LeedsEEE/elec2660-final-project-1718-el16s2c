//
//  FirstViewController.m
//  Electronic Component Value Calculator
//
//  Created by cashie on 15/11/2017.
//  Copyright © 2017 leeds. All rights reserved.
//

// we are testing github//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.reset.layer.cornerRadius=20;
    self.reset.clipsToBounds=true;
    self.Calculate.layer.cornerRadius=20;
    self.Calculate.clipsToBounds=true;
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    }

#pragma mark - Action Button method for calculation

- (IBAction)Calculate:(id)sender {
    [self showMessage];
    
    NSString *str = _textOne.text;
    
    if([str length] == 0) {                 // checks the text field One vaule
     return;
     }
     else if ([str length] == 1) {
     return;                                // checks the text field One vaule
     }
     else if ([str length] == 2) {
         return;                            // checks the text field One vaule
     }
    
    
    NSString *value = [str substringWithRange:NSMakeRange(0,2)];    // value is within the substring, it takes 0 to 2 of capacitor code
    NSString *multiplier= [str substringWithRange:NSMakeRange(2,1)];    // This above two lines of codes are adapted from https://stackoverflow.com/questions/5676106/how-to-get-substring-of-nsstring
    int NumberValue = [value intValue];// Assigning the NumberValue as integer
    float MultiplierNumber = [multiplier intValue];// Assigning the MultiplierNumber as float
    
   
    
    NSLog(@"%@", [NSString stringWithFormat:@"value = %ld, multiplier = %ld", (long)NumberValue, (long)MultiplierNumber]);

    
    if (MultiplierNumber == 0)         // if statement is used to check the Multiplier Number (third digit)
    {
        MultiplierNumber = 1;           // multiply by 1
        
    }
    else  if (MultiplierNumber == 1)    // to check the Multiplier Number
    {
        MultiplierNumber = 10;          // multiply by 2
        
    }
    else  if (MultiplierNumber == 2)
    {
        MultiplierNumber = 100;
        
        
    } else  if (MultiplierNumber == 3)
    {
        MultiplierNumber = 1000;
        
    } else  if (MultiplierNumber == 4)
    {
        MultiplierNumber = 10000;
        
    } else  if (MultiplierNumber == 5)
    {
        MultiplierNumber = 100000;
        
    }
    else  if (MultiplierNumber == 6)
    {
        MultiplierNumber = 1000000;
        
    }
    else  if (MultiplierNumber == 7)
    {
        MultiplierNumber = 1000000;
        
    }else  if (MultiplierNumber == 8)
    {
        MultiplierNumber = 1000000;
        
    }else  if (MultiplierNumber == 9)
    {
        MultiplierNumber = 1000000;
        
    }
    
    
    float result = NumberValue*MultiplierNumber;// multiplies both NuberValue and multiplier
    self.textTwo.text = [NSString stringWithFormat:@"%.4f",result];//results prints into text field two
    float result2 = result/1000;// the result converted into nanofarads
    self.textThree.text = [NSString stringWithFormat:@"%.4f",result2];//results prints into text field three
    float result3 = result2/1000;// result2 converted into microfarads
    self.textFour.text = [NSString stringWithFormat:@"%f",result3];//result3 prints into text field four
    }

#pragma mark - Warning Message for Empty Text Field

-(void)showMessage{
    NSString *textNew = _textOne.text;
    if ([textNew length] == 0) {
    
    UIAlertController * warning =   [UIAlertController
                                     alertControllerWithTitle:@"Warning!"
                                     message:@"Please Enter 3 Digits Capacitor Code"
                                     preferredStyle:UIAlertControllerStyleAlert];
                                     // displays the warning message in the screen
    
    UIAlertAction *okAction     =    [UIAlertAction actionWithTitle:@"OK"
                                     style:UIAlertActionStyleDefault
                                     handler:^(UIAlertAction *action){
                                     return ;}];
                                     // This line of code is adapted from https://stackoverflow.com/questions/32690086/uialertview-first-deprecated-ios-9
    
                                    [warning addAction:okAction];
    UIViewController *vc        =   [[[[UIApplication sharedApplication] delegate] window] rootViewController];
                                    [vc presentViewController:warning animated:YES completion:nil];}


    else if ([textNew length] == 1) {
    
    UIAlertController * warning =   [UIAlertController
                                    alertControllerWithTitle:@"Warning!"
                                    message:@"Please Enter 3 Digits Capacitor Code"
                                    preferredStyle:UIAlertControllerStyleAlert];
                                    // displays the warning message in the screen

    UIAlertAction *okAction     =    [UIAlertAction actionWithTitle:@"OK"
                                     style:UIAlertActionStyleDefault
                                     handler:^(UIAlertAction *action){
                                     return ;}];
        
        
                                    [warning addAction:okAction];
    UIViewController *vc        =   [[[[UIApplication sharedApplication] delegate] window] rootViewController];
                                    [vc presentViewController:warning animated:YES completion:nil];}

    else if ([textNew length] == 2) {
        
        UIAlertController * warning =   [UIAlertController
                                         alertControllerWithTitle:@"Warning!"
                                         message:@"Please Enter 3 Digits Capacitor Code"
                                         preferredStyle:UIAlertControllerStyleAlert];
        // displays the warning message in the screen
        
        UIAlertAction *okAction     =    [UIAlertAction actionWithTitle:@"OK"
                                                                  style:UIAlertActionStyleDefault
                                                                handler:^(UIAlertAction *action){
                                                                    return ;}];
        
        
        [warning addAction:okAction];
        UIViewController *vc        =   [[[[UIApplication sharedApplication] delegate] window] rootViewController];
        [vc presentViewController:warning animated:YES completion:nil];}

    
    else if ([textNew length] >=4) {
        
        UIAlertController * warning =   [UIAlertController
                                         alertControllerWithTitle:@"Warning!"
                                         message:@"Please Enter 3 Digits Capacitor Code"
                                         preferredStyle:UIAlertControllerStyleAlert];
        // displays the warning message in the screen
        
        UIAlertAction *okAction     =    [UIAlertAction actionWithTitle:@"OK"
                                                                  style:UIAlertActionStyleDefault
                                                                handler:^(UIAlertAction *action){
                                                                    return ;}];
        
        
        [warning addAction:okAction];
        UIViewController *vc        =   [[[[UIApplication sharedApplication] delegate] window] rootViewController];
        [vc presentViewController:warning animated:YES completion:nil];}
    
    
    
    }

#pragma mark - Button Action method to clean all textfeild

- (IBAction)Reset:(id)sender {// To make empty all text fields
    self.textOne.text = NULL;
    self.textTwo.text = NULL;
    self.textThree.text = NULL;
    self.textFour.text = NULL;
    
    }

#pragma mark Text Field Delegate method

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    // This line of code is adapted from https://stackoverflow.com/questions/6178638/uitextfield-delegate
    
    [_textOne resignFirstResponder];
    // Removes the keyboard from the screen
    
    return YES;
    }

    @end

// Further References:
// capacitor image has taken from http://www.eresearchlab.com/product/0-001uf-102-ceramic-capacitor-5-pieces-pack/
// capacitor icon has taken from http://www.iconbeast.com/free/
