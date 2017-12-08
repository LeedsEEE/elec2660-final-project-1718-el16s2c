//
//  PowerViewController.h
//  Electronic Component Value Calculator
//
//  Created by cashie on 22/11/2017.
//  Copyright © 2017 leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PowerViewController : UIViewController
<UIPickerViewDataSource, UIPickerViewDelegate>


@property double I;
@property double X;
@property double Z;
@property double R;

-(double) activePower;
-(double) reactivePower;
-(double) apparentPower;



@property (weak, nonatomic) IBOutlet UIImageView *ImageView;
// outlet textfiled
@property (weak, nonatomic) IBOutlet UITextField *Current;
@property (weak, nonatomic) IBOutlet UITextField *Reactance;
@property (weak, nonatomic) IBOutlet UITextField *Impedance;
@property (weak, nonatomic) IBOutlet UITextField *Resistance;
// outlet labels
@property (weak, nonatomic) IBOutlet UILabel *ActivePower;
@property (weak, nonatomic) IBOutlet UILabel *ReactivePower;
@property (weak, nonatomic) IBOutlet UILabel *ApparentPower;

// outlet labels
@property (weak, nonatomic) IBOutlet UILabel *CurrentLabel;
@property (weak, nonatomic) IBOutlet UILabel *ReactanceLabel;
@property (weak, nonatomic) IBOutlet UILabel *ImpedanceLabel;
@property (weak, nonatomic) IBOutlet UILabel *ResistanceLabel;
// Action buttons
- (IBAction)calculate:(UIButton *)sender;
- (IBAction)reset:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *calculate;
@property (weak, nonatomic) IBOutlet UIButton *reset;


@end




