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
    AVAudioPlayer *_audioPlayer;
     AVAudioPlayer *_audioPlayer1;
}
@end

@implementation Question1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    NSString *path = [NSString stringWithFormat:@"%@/Wrong Buzzer1.wav", [[NSBundle mainBundle] resourcePath] ];
    NSURL *soundUrl = [NSURL fileURLWithPath:path];
    _audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl error:nil];
    
    NSString *pathOne = [NSString stringWithFormat:@"%@/Correct.wav", [[NSBundle mainBundle] resourcePath] ];
    NSURL *soundUrl1 = [NSURL fileURLWithPath:pathOne];
    _audioPlayer1 = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl1 error:nil];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)buttonA:(id)sender{
    _Answer.text = @"Wrong! Answer";
    _Answer.textColor = [UIColor redColor];
    [_audioPlayer play];
    
}
-(IBAction)buttonB:(id)sender{
    _Answer.text = @"Wrong! Answer";
    _Answer.textColor = [UIColor redColor];
    [_audioPlayer play];
}
-(IBAction)buttonC:(id)sender{
    _Answer.text = @"Correct! Answer";
    _Answer.textColor = [UIColor blueColor];
    [_audioPlayer1 play];
}
-(IBAction)buttonD:(id)sender{
    _Answer.text = @"Wrong! Answer";
    _Answer.textColor = [UIColor redColor];
    [_audioPlayer play];
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
