//
//  SecondViewController.h
//  Electronic Component Value Calculator
//
//  Created by cashie on 15/11/2017.
//  Copyright © 2017 leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController

{bool multiplierPressed;
    bool multiply;
    NSString *firstEntry;
    NSString *secondEntry;
    NSString *multiplierOne;
}

@property (weak, nonatomic) IBOutlet UIImageView *image;

- (IBAction)multiplierOne:(id)sender;
- (IBAction)multiplierTwo:(id)sender;
- (IBAction)multiplierThree:(id)sender;
- (IBAction)multiplierFour:(id)sender;
- (IBAction)multiplierFive:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *displayLabel;

@property (weak, nonatomic) IBOutlet UILabel *inductorLabel;
@property (weak, nonatomic) IBOutlet UILabel *name;

-(IBAction)colourPressed:(UIButton*)sender;

- (IBAction)calculate:(id)sender;
- (IBAction)reset:(id)sender;






@end

