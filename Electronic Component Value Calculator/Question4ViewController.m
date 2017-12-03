//
//  Question4ViewController.m
//  Electronic Component Value Calculator
//
//  Created by cashie on 02/12/2017.
//  Copyright © 2017 leeds. All rights reserved.
//

#import "Question4ViewController.h"
#import <AVFoundation/AVFoundation.h>
@interface Question4ViewController ()

{
    AVAudioPlayer *_audioPlayer4;
    AVAudioPlayer *_audioPlayer41;
}
@end

@implementation Question4ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *path4 = [NSString stringWithFormat:@"%@/Wrong Buzzer1.wav", [[NSBundle mainBundle] resourcePath] ];
    NSURL *soundUrl4 = [NSURL fileURLWithPath:path4];
    _audioPlayer4 = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl4 error:nil];
    
    NSString *pathFour = [NSString stringWithFormat:@"%@/Correct.wav", [[NSBundle mainBundle] resourcePath] ];
    NSURL *soundUrl41 = [NSURL fileURLWithPath:pathFour];
    _audioPlayer41 = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl41 error:nil];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)buttonA4:(id)sender{
    _Answer4.text = @"Wrong! Answer";
    _Answer4.textColor = [UIColor redColor];
    [_audioPlayer4 play];
}
-(IBAction)buttonB4:(id)sender{
    _Answer4.text = @"Wrong! Answer";
    _Answer4.textColor = [UIColor redColor];
    [_audioPlayer4 play];
}
-(IBAction)buttonC4:(id)sender{
    _Answer4.text = @"Correct! Answer";
    _Answer4.textColor = [UIColor blueColor];
    [_audioPlayer41 play];
}
-(IBAction)buttonD4:(id)sender{
    _Answer4.text = @"Wrong! Answer";
    _Answer4.textColor = [UIColor redColor];
    [_audioPlayer4 play];
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
