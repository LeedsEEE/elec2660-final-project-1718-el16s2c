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
}
// 1st band
- (IBAction)Black:(id)sender {
    display.text = [NSString stringWithFormat:@"%@0",display.text];
}

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


// 2nd band
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


//multipliers

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

//tolerance
- (IBAction)tolerance1:(id)sender {
     display.text = [NSString stringWithFormat:@"%@±20%%",display.text];
}

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


// reset

- (IBAction)Clear:(id)sender {
    display.text = @"";
   
    _Clear.layer.cornerRadius = 5;//need changing
    _Clear.clipsToBounds = true;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
