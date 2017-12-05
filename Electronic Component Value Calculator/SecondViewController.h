//
//  SecondViewController.h
//  Electronic Component Value Calculator
//
//  Created by cashie on 15/11/2017.
//  Copyright © 2017 leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum {MULTIPLY} Multiplier;

@interface SecondViewController : UIViewController

{
    IBOutlet UITextField *display;
    NSString *storage;
    NSString *secondNumber;
    Multiplier multiply;
    
    
}
@property UIButton *Clear;
@property (weak, nonatomic) IBOutlet UIImageView *image;

- (IBAction)multiplierOne:(id)sender;
- (IBAction)multiplierTwo:(id)sender;
- (IBAction)multiplierThree:(id)sender;
- (IBAction)multiplierFour:(id)sender;
- (IBAction)multiplierFive:(id)sender;



@property (weak, nonatomic) IBOutlet UILabel *inductorLabel;
@property (weak, nonatomic) IBOutlet UILabel *name;





@end

