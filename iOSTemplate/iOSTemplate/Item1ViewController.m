//
//  Item1ViewController.m
//  iOSTemplate
//
//  Created by Sydney Richardson on 2/3/15.
//  Copyright (c) 2015 Swamphacks. All rights reserved.
//

#import "Item1ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface Item1ViewController () <AVAudioPlayerDelegate>

@property AVAudioPlayer *audioPlayer;

@end

@implementation Item1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.parentViewController.title = @"Beep Boop";
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)beepButtonPressed:(id)sender {
    //play "beep" sound
    [self playSound:@"beep"];
}
- (IBAction)boopButtonPressed:(id)sender {
    //play "boop" sound
    [self playSound:@"boop"];
}

- (void)playSound:(NSString *)soundTitle {
    NSString *soundPath = [[NSBundle mainBundle] pathForResource:soundTitle ofType:@"mp3"];
    NSURL *url = [NSURL fileURLWithPath:soundPath];
    self.audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:NULL];
    [self.audioPlayer setDelegate:self];
    [self.audioPlayer setVolume:1.0];
    [self.audioPlayer play];
}

@end
