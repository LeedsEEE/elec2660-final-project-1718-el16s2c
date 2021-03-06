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




- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view, typically from a nib
        {
            UIAlertController * warning =   [UIAlertController
                                             alertControllerWithTitle:@"Warning!"
                                             
                                             message:@"Please Select 4 Colours From the Screen"
                                             preferredStyle:UIAlertControllerStyleAlert];
            
            UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){// This code is adapted from https://stackoverflow.com/questions/32690086/uialertview-first-deprecated-ios-9
                
                //do something when click button
                return ;}];
            [warning addAction:okAction];
            UIViewController *vc = [[[[UIApplication sharedApplication] delegate] window] rootViewController];
            
            [vc presentViewController:warning animated:YES completion:nil];
        }
}




#pragma mark - Button Action method for colour
// 1st band colours of inductor
- (IBAction)Black:(id)sender {
    display.text = [NSString stringWithFormat:@"%@0",display.text];
}// prints values for 1st band

- (IBAction)Brown:(id)sender {
    display.text = [NSString stringWithFormat:@"%@1",display.text];
}


- (IBAction)Red:(id)sender {
    display.text = [NSString stringWithFormat:@"%@2",display.text];
}

- (IBAction)Orange:(id)sender {
    display.text = [NSString stringWithFormat:@"%@3",display.text];
    
}

- (IBAction)Yellow:(id)sender {
    display.text = [NSString stringWithFormat:@"%@4",display.text];
}

- (IBAction)Green:(id)sender {
    display.text = [NSString stringWithFormat:@"%@5",display.text];
}

- (IBAction)Blue:(id)sender {
    display.text = [NSString stringWithFormat:@"%@6",display.text];
}

- (IBAction)Violet:(id)sender {
    display.text = [NSString stringWithFormat:@"%@7",display.text];
}

- (IBAction)Grey:(id)sender {
    display.text = [NSString stringWithFormat:@"%@8",display.text];
}

- (IBAction)White:(id)sender {
    display.text = [NSString stringWithFormat:@"%@9",display.text];
}

#pragma mark - Button Action method for colour in second band
// 2nd band colours of inductor
- (IBAction)Black1:(id)sender {
    display.text = [NSString stringWithFormat:@"%@0",display.text];
}

- (IBAction)Brown1:(id)sender {
    display.text = [NSString stringWithFormat:@"%@1",display.text];
}


- (IBAction)Red1:(id)sender {
    display.text = [NSString stringWithFormat:@"%@2",display.text];
}

- (IBAction)Orange1:(id)sender {
    display.text = [NSString stringWithFormat:@"%@3",display.text];
    
}

- (IBAction)Yellow1:(id)sender {
    display.text = [NSString stringWithFormat:@"%@4",display.text];
}

- (IBAction)Green1:(id)sender {
    display.text = [NSString stringWithFormat:@"%@5",display.text];
}

- (IBAction)Blue1:(id)sender {
    display.text = [NSString stringWithFormat:@"%@6",display.text];
}

- (IBAction)Violet1:(id)sender {
    display.text = [NSString stringWithFormat:@"%@7",display.text];
}

- (IBAction)Grey1:(id)sender {
    display.text = [NSString stringWithFormat:@"%@8",display.text];
}

- (IBAction)White1:(id)sender {
    display.text = [NSString stringWithFormat:@"%@9",display.text];
}

#pragma mark - Button Action method for Multiplier
//3rd band colours (multipliers)

- (IBAction)multiplierOne:(id)sender{
      display.text = [NSString stringWithFormat:@"%@μH",display.text];
    
}
- (IBAction)multiplierTwo:(id)sender{
     display.text = [NSString stringWithFormat:@"%@00μH",display.text];
}

- (IBAction)multiplierThree:(id)sender {
    display.text = [NSString stringWithFormat:@"%@000μH",display.text];
    
}
- (IBAction)multiplierFour:(id)sender {
   display.text = [NSString stringWithFormat:@"%@0000μH",display.text];
    
}
- (IBAction)multiplierFive:(id)sender {
   display.text = [NSString stringWithFormat:@"%@00000μH",display.text];
}
#pragma mark - Button Action method for tolerance
//tolerance
- (IBAction)tolerance1:(id)sender {
     display.text = [NSString stringWithFormat:@"%@±20%%",display.text];
}// shows tolerance with the inductor value

- (IBAction)tolerance2:(id)sender {
    display.text = [NSString stringWithFormat:@"%@±1%%",display.text];
}

- (IBAction)tolerance3:(id)sender {
    display.text = [NSString stringWithFormat:@"%@±2%%",display.text];
}

- (IBAction)tolerance4:(id)sender {
    display.text = [NSString stringWithFormat:@"%@±3%%",display.text];
}


- (IBAction)tolerance5:(id)sender {
    display.text = [NSString stringWithFormat:@"%@±4%%",display.text];
}


- (IBAction)tolerance6:(id)sender {
    display.text = [NSString stringWithFormat:@"%@±20%%",display.text];
}

- (IBAction)tolerance7:(id)sender {
    display.text = [NSString stringWithFormat:@"%@±5%%",display.text];
}

- (IBAction)tolerance8:(id)sender {
    display.text = [NSString stringWithFormat:@"%@±10%%",display.text];
}

#pragma mark - Warning Messages for empty text field

-(void)showMessage{
    
        UIAlertController * warning =   [UIAlertController
                                         alertControllerWithTitle:@"Warning!"
                                         
                                         message:@"Please Select 4 Colours From the Screen"
                                         preferredStyle:UIAlertControllerStyleAlert];
                                //displays the message in the screen
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){// This code is adapted from https://stackoverflow.com/questions/32690086/uialertview-first-deprecated-ios-9
            //asks user to select the colours
            return ;}];
        [warning addAction:okAction];
        UIViewController *vc = [[[[UIApplication sharedApplication] delegate] window] rootViewController];
        
        [vc presentViewController:warning animated:YES completion:nil];
    }

#pragma mark - Action Button to Delete All Input Data
- (IBAction)Clear:(id)sender {
    display.text = @"";//empty the text field
   
    _Clear.layer.cornerRadius = 5;//to make the round button
    _Clear.clipsToBounds = true;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
// Reference
// inductor image is taken from https://msestores.com/product-category/inductors
// inductor icon is taken from  http://www.iconbeast.com/free/
