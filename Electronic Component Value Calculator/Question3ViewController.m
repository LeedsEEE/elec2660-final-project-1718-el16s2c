//
//  Question3ViewController.m
//  Electronic Component Value Calculator
//
//  Created by cashie on 02/12/2017.
//  Copyright © 2017 leeds. All rights reserved.
//

#import "Question3ViewController.h"
#import <AVFoundation/AVFoundation.h>
@interface Question3ViewController ()

{
    AVAudioPlayer *_audioPlayer3;
    AVAudioPlayer *_audioPlayer31;
}
@end

@implementation Question3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *path3 = [NSString stringWithFormat:@"%@/Wrong Buzzer1.wav", [[NSBundle mainBundle] resourcePath] ];
    NSURL *soundUrl3 = [NSURL fileURLWithPath:path3];
    _audioPlayer3 = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl3 error:nil];
    
    NSString *pathThree = [NSString stringWithFormat:@"%@/Correct.wav", [[NSBundle mainBundle] resourcePath] ];
    NSURL *soundUrl31 = [NSURL fileURLWithPath:pathThree];
    _audioPlayer31 = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl31 error:nil];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)buttonA3:(id)sender{
    _Answer3.text = @"Wrong! Answer";
    _Answer3.textColor = [UIColor redColor];
    [_audioPlayer3 play];
}
-(IBAction)buttonB3:(id)sender{
    _Answer3.text = @"Correct! Answer";
    _Answer3.textColor = [UIColor blueColor];
    [_audioPlayer31 play];
}
-(IBAction)buttonC3:(id)sender{
    _Answer3.text = @"Wrong! Answer";
    _Answer3.textColor = [UIColor redColor];
    [_audioPlayer3 play];
}
-(IBAction)buttonD3:(id)sender{
    _Answer3.text = @"Wrong! Answer";
    _Answer3.textColor = [UIColor redColor];
    [_audioPlayer3 play];
}
/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
