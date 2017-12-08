//
//  PowerViewController.m
//  Electronic Component Value Calculator
//
//  Created by cashie on 22/11/2017.
//  Copyright © 2017 leeds. All rights reserved.
//

#import "PowerViewController.h"

@interface PowerViewController ()

@end

@implementation PowerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.reset.layer.cornerRadius=20;
    self.reset.clipsToBounds=true;
    
    self.calculate.layer.cornerRadius=20;
    self.calculate.clipsToBounds=true;
    
    self.Current.delegate = self;
    self.Current.tag = 0;
    
    self.Reactance.delegate = self;
    self.Reactance.tag = 1;
    
    self.Impedance.delegate = self;
    self.Impedance.tag = 2;
    
    self.Resistance.delegate = self;
    self.Resistance.tag = 3;
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(double) activePower
{
    double ActPower = ((pow((self.I),2))*(self.R)); // to store the active power equation in order to use in the calcuation
    
    return ActPower;
}
-(double) reactivePower
{
    double RecPower = ((pow((self.I),2))*(self.X)); // to store the reactive power equation in order to use in the calcuation
    
    return RecPower;
}

-(double) apparentPower
{
    double AppPower = ((pow((self.I),2))*(self.Z)); // to store the apparent power equation in order to use in the calcuation
    
    return AppPower;
    
}
#pragma mark Action Button to clear all text fileds
- (IBAction)reset:(UIButton *)sender {// makes empty the all text fields
    self.Current.text = NULL;
    self.Reactance.text = NULL;
    self.Impedance.text = NULL;
    self.Resistance.text = NULL;
}
#pragma mark Action Button to calculate

- (IBAction)calculate:(UIButton *)sender {
    [self showMessage];
    
    double current  =  self.I = [self.Current.text doubleValue];
    double reactance   =  self.X = [self.Reactance.text doubleValue];
    double impedance =  self.Z = [self.Impedance.text doubleValue];
    double resistance =  self.R = [self.Resistance.text doubleValue];
    

    double ActiPow = [self activePower];
    self.ActivePower.text=[[NSString alloc]initWithFormat:@"Active Power = %.4fW",ActiPow];// displays the calculated active power in text field 4 decimal
    
    double RectPow =[self reactivePower];
    self.ReactivePower.text=[[NSString alloc]initWithFormat:@"Recative Power = %.4fVAR",RectPow];// displays the calculated reactive power in text field 4 decimal
    
    double AppaPow =[self apparentPower];
    self.ApparentPower.text=[[NSString alloc]initWithFormat:@"Apparent Power = %.4fV/A",AppaPow];// displays the calculated apparent power in text field 4 decimal
}
#pragma mark - Warning for empty text field

-(void)showMessage{
    
    if ([self.Current.text isEqualToString:@""]){
        UIAlertController * warning =   [UIAlertController
                                         alertControllerWithTitle:@"Warning!"
                                         
                                         message:@"Please Enter A Value for Current"
                                         preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){// This code is adapted from https://stackoverflow.com/questions/32690086/uialertview-first-deprecated-ios-9
            
            //do something when click button
            return ;}];
        [warning addAction:okAction];
        UIViewController *vc = [[[[UIApplication sharedApplication] delegate] window] rootViewController];
        
        [vc presentViewController:warning animated:YES completion:nil];
    }
    
}



#pragma mark Text Field Delegate method
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    // These lines of code are adapted from https://stackoverflow.com/questions/6178638/uitextfield-delegate
    
    [_Current resignFirstResponder];
    [_Reactance resignFirstResponder];
    [_Impedance resignFirstResponder];
    [_Resistance resignFirstResponder];
    return YES;
}

@end
