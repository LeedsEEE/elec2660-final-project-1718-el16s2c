//
//  FirstViewController.h
//  Electronic Component Value Calculator
//
//  Created by cashie on 15/11/2017.
//  Copyright © 2017 leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textOne;

@property (weak, nonatomic) IBOutlet UITextField *textTwo;
@property (weak, nonatomic) IBOutlet UITextField *textThree;
@property (weak, nonatomic) IBOutlet UITextField *textFour;

@property (weak, nonatomic) IBOutlet UILabel *capacitor;
@property (weak, nonatomic) IBOutlet UILabel *pico;
@property (weak, nonatomic) IBOutlet UILabel *nano;
@property (weak, nonatomic) IBOutlet UILabel *micro;

@property (weak, nonatomic) IBOutlet UIImageView *capacitorImage;
- (IBAction)Reset:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *reset;
@property (weak, nonatomic) IBOutlet UIButton *Calculate;


@end

