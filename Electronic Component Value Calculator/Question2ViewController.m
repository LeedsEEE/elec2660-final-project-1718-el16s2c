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
    
    NSString *path2 = [NSString stringWithFormat:@"%@/Wrong Buzzer1.wav", [[NSBundle mainBundle] resourcePath] ];// open up paths for the audio sound
    NSURL *soundUrl2 = [NSURL fileURLWithPath:path2];
    _audioPlayer2 = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl2 error:nil];//This line of code is based on https://stackoverflow.com/questions/12557605/playing-music-within-app
    
    
    NSString *pathTwo = [NSString stringWithFormat:@"%@/Correct.wav", [[NSBundle mainBundle] resourcePath] ];
    NSURL *soundUrl21 = [NSURL fileURLWithPath:pathTwo];
    _audioPlayer21 = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl21 error:nil];//This line of code is based on https://stackoverflow.com/questions/12557605/playing-music-within-app
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)buttonA2:(id)sender{
    _Answer2.text = @"Wrong! Answer";// displays the wrong answer in the label
    _Answer2.textColor = [UIColor redColor];// colour of the answer text
    [_audioPlayer2 play];//plays buzzer
}
-(IBAction)buttonB2:(id)sender{
    _Answer2.text = @"Wrong! Answer";// displays the wrong answer in the label
    _Answer2.textColor = [UIColor redColor];// colour of the answer text
    [_audioPlayer2 play];//plays buzzer
}
-(IBAction)buttonC2:(id)sender{
    _Answer2.text = @"Correct! Answer";// displays the correct answer in the label
    _Answer2.textColor = [UIColor blueColor];// colour of the answer text
    [_audioPlayer21 play];//plays audio
}
-(IBAction)buttonD2:(id)sender{
    _Answer2.text = @"Wrong! Answer";// displays the wrong answer in the label
    _Answer2.textColor = [UIColor redColor];// colour of the answer text
    [_audioPlayer2 play];//plays buzzer
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

