//
//  Question2ViewController.m
//  Electronic Component Value Calculator
//
//  Created by cashie on 02/12/2017.
//  Copyright © 2017 leeds. All rights reserved.
//

#import "Question2ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface Question2ViewController ()

{
    AVAudioPlayer *_audioPlayer2;
    AVAudioPlayer *_audioPlayer21;
}
@end

@implementation Question2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *path2 = [NSString stringWithFormat:@"%@/Wrong Buzzer1.wav", [[NSBundle mainBundle] resourcePath] ];
    NSURL *soundUrl2 = [NSURL fileURLWithPath:path2];
    _audioPlayer2 = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl2 error:nil];
    
    NSString *pathTwo = [NSString stringWithFormat:@"%@/Correct.wav", [[NSBundle mainBundle] resourcePath] ];
    NSURL *soundUrl21 = [NSURL fileURLWithPath:pathTwo];
    _audioPlayer21 = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl21 error:nil];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)buttonA2:(id)sender{
    _Answer2.text = @"Wrong! Answer";
    _Answer2.textColor = [UIColor redColor];
    [_audioPlayer2 play];
}
-(IBAction)buttonB2:(id)sender{
    _Answer2.text = @"Wrong! Answer";
    _Answer2.textColor = [UIColor redColor];
    [_audioPlayer2 play];
}
-(IBAction)buttonC2:(id)sender{
    _Answer2.text = @"Correct! Answer";
    _Answer2.textColor = [UIColor blueColor];
    [_audioPlayer21 play];
}
-(IBAction)buttonD2:(id)sender{
    _Answer2.text = @"Wrong! Answer";
    _Answer2.textColor = [UIColor redColor];
    [_audioPlayer2 play];
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

