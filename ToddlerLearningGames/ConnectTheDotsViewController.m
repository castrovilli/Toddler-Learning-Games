//
//  ConnectTheDotsViewController.m
//  ToddlerLearningGames
//
//  Created by Karen Page Hanes on 11/12/13.
//  Copyright (c) 2013 Karen Page Hanes. All rights reserved.
//

#import "ConnectTheDotsViewController.h"

@interface ConnectTheDotsViewController ()

@property ConnectTheDotsScene *dots;

@end

@implementation ConnectTheDotsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    //Create a new ConnectTheDotsScene.
    self.dots  = [[ConnectTheDotsScene alloc] initWithSize:CGSizeMake(1024,768)];
    SKView *dotsView = (SKView *) self.view;
    self.dots.message = self.message;
    [dotsView presentScene: self.dots];
}

-(void) viewWillDisappear:(BOOL)animated {
    // Just before the view is dismissed, covered, or otherwise hidden, stop the audio playing.
    [self.dots.oneAudioPlayer stop];
    [self.dots.twoAudioPlayer stop];
    [self.dots.threeAudioPlayer stop];
    [self.dots.fourAudioPlayer stop];
    [self.dots.fiveAudioPlayer stop];
    [self.dots.sixAudioPlayer stop];
    [self.dots.sevenAudioPlayer stop];
    [self.dots.eightAudioPlayer stop];
    [self.dots.nineAudioPlayer stop];
    [self.dots.tenAudioPlayer stop];
    [self.dots.applaudAudioPlayer stop];
    
    // Drop the object reference to the audio players.
    self.dots.oneAudioPlayer = nil;
    self.dots.twoAudioPlayer = nil;
    self.dots.threeAudioPlayer = nil;
    self.dots.fourAudioPlayer = nil;
    self.dots.fiveAudioPlayer = nil;
    self.dots.sixAudioPlayer = nil;
    self.dots.sevenAudioPlayer = nil;
    self.dots.eightAudioPlayer = nil;
    self.dots.nineAudioPlayer = nil;
    self.dots.tenAudioPlayer = nil;
    self.dots.applaudAudioPlayer = nil;
}

@end
