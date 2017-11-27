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
    // Do any additional setup after loading the view, typically from a nib.

multiplierPressed = FALSE;
    firstEntry = NULL;
    secondEntry = NULL;
    multiplierOne = NULL;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)colourPressed:(UIButton*)sender;{
        int tag = sender.tag;

    if (multiplierPressed == FALSE){
        
        if (firstEntry == NULL){
            firstEntry = [NSString stringWithFormat:@"%i",tag];
            _displayLabel.text = firstEntry;
        }
    

else {
     firstEntry = [NSString stringWithFormat:@"%@%i",firstEntry,tag];
    _displayLabel.text = firstEntry;
    
}

}
    else {
        if (secondEntry == NULL){
            secondEntry = [NSString stringWithFormat:@"%i",tag];
            _displayLabel.text = secondEntry;
        }
        else {
            secondEntry = [NSString stringWithFormat:@"%i",tag];
            _displayLabel.text = secondEntry;
        }
    }

}

- (IBAction)calculate:(id)sender {
}

- (IBAction)reset:(id)sender {
    
    _displayLabel.text == NULL;
    
}


- (IBAction)multiplierOne:(id)sender {
    multiply = TRUE;
    if (firstEntry == NULL){
        secondEntry = [NSString stringWithFormat:@"%i",multiplierOne];
    }
        
    
}

- (IBAction)multiplierTwo:(id)sender {
    multiply = TRUE;
}


- (IBAction)multiplierThree:(id)sender {
    multiply = TRUE;
}

- (IBAction)multiplierFour:(id)sender {
    multiply = TRUE;
}

- (IBAction)multiplierFive:(id)sender {
    multiply = TRUE;
}
@end
