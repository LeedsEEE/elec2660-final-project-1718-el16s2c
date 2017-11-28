//
//  SecondViewController.h
//  Electronic Component Value Calculator
//
//  Created by cashie on 15/11/2017.
//  Copyright © 2017 leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#define MULTIPLY 2

@interface SecondViewController : UIViewController

{
    NSInteger num1;
    NSInteger num2;
    NSInteger num3; // multiplyer
    
    double answer;
    NSInteger operand;
    NSString * theNumber;
    IBOutlet UILabel *displayLabel;
    
}

@property (weak, nonatomic) IBOutlet UIImageView *image;

- (IBAction)multiplierOne:(id)sender;
- (IBAction)multiplierTwo:(id)sender;
- (IBAction)multiplierThree:(id)sender;
- (IBAction)multiplierFour:(id)sender;
- (IBAction)multiplierFive:(id)sender;

@property NSString *theNumber;
@property NSInteger num1;
@property NSInteger num2;
@property double answer;
@property NSInteger operand;

@property (weak, nonatomic) IBOutlet UILabel *displayLabel;


@property (weak, nonatomic) IBOutlet UILabel *inductorLabel;
@property (weak, nonatomic) IBOutlet UILabel *name;
- (IBAction)press9:(id)sender;

- (IBAction)calculate:(id)sender;
- (IBAction)reset:(id)sender;






@end

