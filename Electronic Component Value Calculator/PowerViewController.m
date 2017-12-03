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
    double ActPower = ((pow((self.I),2))*(self.R)); //res = pow(5.0,2.0); //25
    
    return ActPower;
    
}

-(double) reactivePower
{
   
    double RecPower = ((pow((self.I),2))*(self.X)); //res = pow(5.0,2.0); //25
    
    return RecPower;
    
}

-(double) apparentPower
{
    
    double AppPower = ((pow((self.I),2))*(self.Z)); //res = pow(5.0,2.0); //25
    
    return AppPower;
    
}


- (IBAction)reset:(UIButton *)sender {
    
    
    
    self.Current.text = NULL;
    self.Reactance.text = NULL;
    self.Impedance.text = NULL;
    self.Resistance.text = NULL;
}


- (IBAction)calculate:(UIButton *)sender {
    
    
    double current  =  self.I = [self.Current.text doubleValue];
    double reactance   =  self.X = [self.Reactance.text doubleValue];
    double impedande =  self.Z = [self.Impedance.text doubleValue];
    double resistance =  self.R = [self.Resistance.text doubleValue];
    

    double ActiPow = [self activePower];
    self.ActivePower.text=[[NSString alloc]initWithFormat:@"Active Power = %.2fW",ActiPow];
    
    double RectPow =[self reactivePower];
    self.ReactivePower.text=[[NSString alloc]initWithFormat:@"Recative Power = %.2fVAR",RectPow];
    
    double AppaPow =[self apparentPower];
    self.ApparentPower.text=[[NSString alloc]initWithFormat:@"Apparent Power = %.2fV/A",AppaPow];
}


#pragma mark Text Field Delegate Methods

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
   //  http://stackoverflow.com/questions/1347779/how-to-navigate-through-textfields-next-done-buttons
    
    NSInteger nextTag = textField.tag + 1;
    UIResponder* nextResponder = [textField.superview viewWithTag:nextTag];
    if (nextResponder) {
        
        [nextResponder becomeFirstResponder];
    } else {
    
        [textField resignFirstResponder];
    }
    return YES;
    

}

@end
