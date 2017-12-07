//
//  ViewController.m
//  Electronic Component Value Calculator
//
//  Created by cashie on 28/11/2017.
//  Copyright © 2017 leeds. All rights reserved.
//

#import "Question1ViewController.h"
@interface Question1ViewController ()
{
    AVAudioPlayer *_audioPlayer;//assigning -audioPlayer into AVAudioPlayer
     AVAudioPlayer *_audioPlayer1;//assigning -audioPlayer1 into AVAudioPlayer
}
@end

@implementation Question1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    NSString *path = [NSString stringWithFormat:@"%@/Wrong Buzzer1.wav", [[NSBundle mainBundle] resourcePath] ];// open up path for the audio sound
    NSURL *soundUrl = [NSURL fileURLWithPath:path];
    _audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl error:nil];
    //This line of code is based on https://stackoverflow.com/questions/12557605/playing-music-within-app
    
    NSString *pathOne = [NSString stringWithFormat:@"%@/Correct.wav", [[NSBundle mainBundle] resourcePath] ];
    NSURL *soundUrl1 = [NSURL fileURLWithPath:pathOne];
    _audioPlayer1 = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl1 error:nil];
    //This line of code is based on https://stackoverflow.com/questions/12557605/playing-music-within-app
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Button Action methods
-(IBAction)buttonA:(id)sender{
    _Answer.text = @"Wrong! Answer";// displays the wrong answer in the label
    _Answer.textColor = [UIColor redColor];// colour of the answer text
    [_audioPlayer play];//plays buzzer
    
}
-(IBAction)buttonB:(id)sender{
    _Answer.text = @"Wrong! Answer";// displays the wrong answer in the label
    _Answer.textColor = [UIColor redColor];// colour of the answer text
    [_audioPlayer play];//plays buzzer
}
-(IBAction)buttonC:(id)sender{
    _Answer.text = @"Correct! Answer";// displays the correct answer in the label
    _Answer.textColor = [UIColor blueColor];// colour of the answer text
    [_audioPlayer1 play];//plays buzzer
}
-(IBAction)buttonD:(id)sender{
    _Answer.text = @"Wrong! Answer";// displays the wrong answer in the label
    _Answer.textColor = [UIColor redColor];// colour of the answer text
    [_audioPlayer play];//plays buzzer
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

// further Reference
// circuit image is taken from https://www.indiabix.com/electronic-devices/oscillator-circuits/127002
// audio sounds are adapted from 
