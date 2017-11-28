//
//  FirstViewController.h
//  Electronic Component Value Calculator
//
//  Created by cashie on 15/11/2017.
//  Copyright © 2017 leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController

- (IBAction)textOne:(UITextField *)sender;
@property (weak, nonatomic) IBOutlet UITextField *textTwo;
@property (weak, nonatomic) IBOutlet UILabel *capacitor;
@property (weak, nonatomic) IBOutlet UILabel *pico;

@end

