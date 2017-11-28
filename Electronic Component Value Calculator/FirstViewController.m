//
//  FirstViewController.m
//  Electronic Component Value Calculator
//
//  Created by cashie on 15/11/2017.
//  Copyright © 2017 leeds. All rights reserved.
//

// we are testing github//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
  
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}






- (IBAction)textOne:(UITextField *)sender {
    
    NSString *str = sender.text;
    NSString *value = [str substringWithRange:NSMakeRange(0,2)];
    
    NSString * multiplier= [str substringWithRange:NSMakeRange(2,1)];
    
    
    int NumberValue = [value intValue];
    float MultiplierNumber = [multiplier intValue];
    
    
    NSLog(@"%@", [NSString stringWithFormat:@"value = %ld, multiplier = %ld", (long)NumberValue, (long)MultiplierNumber]);
    
    
    if (MultiplierNumber == 0)
    {
        MultiplierNumber = 1;
        
    }
    else  if (MultiplierNumber == 1)
    {
        MultiplierNumber = 10;
        
    }
    else  if (MultiplierNumber == 2)
    {
        MultiplierNumber = 100;
        
        
    } else  if (MultiplierNumber == 3)
    {
        MultiplierNumber = 1000;
        
    } else  if (MultiplierNumber == 4)
    {
        MultiplierNumber = 10000;
        
    } else  if (MultiplierNumber == 5)
    {
        MultiplierNumber = 100000;
        
    }
    else  if (MultiplierNumber == 6)
    {
        MultiplierNumber = 1000000;
        
    }
    else  if (MultiplierNumber == 7)
    {
        MultiplierNumber = 1000000;
        
    }else  if (MultiplierNumber == 8)
    {
        MultiplierNumber = 1000000;
        
    }else  if (MultiplierNumber == 9)
    {
        MultiplierNumber = 1000000;
        
    }
    
    
    
    
    float result = NumberValue*MultiplierNumber;
    self.textTwo.text = [NSString stringWithFormat:@"%f",result];
    
    
    
    
}
@end
