//
//  ColoringBookViewController.m
//  ToddlerLearningGames
//
//  Created by Karen Page Hanes on 11/12/13.
//  Copyright (c) 2013 Karen Page Hanes. All rights reserved.
//

#import "ColoringViewController.h"


@interface ColoringViewController ()

@property ColoringScene* color;

@end

@implementation ColoringViewController

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
    //Create a new ColoringScene and present it.
    self.color  = [[ColoringScene alloc] initWithSize:CGSizeMake(1024,768)];
    SKView *colorView = (SKView *) self.view;
    self.color.message = self.message;
    [colorView presentScene: self.color];
}

-(void) viewWillDisappear:(BOOL)animated {
    // Just before the view is dismissed, covered, or otherwise hidden, stop the audio playing.
    [self.color.redAudioPlayer stop];
    [self.color.blueAudioPlayer stop];
    [self.color.yellowAudioPlayer stop];
    [self.color.greenAudioPlayer stop];
    [self.color.brownAudioPlayer stop];
    
    // Drop the object reference to the audio players.
    self.color.redAudioPlayer = nil;
    self.color.blueAudioPlayer = nil;
    self.color.yellowAudioPlayer = nil;
    self.color.greenAudioPlayer = nil;
    self.color.brownAudioPlayer = nil;
}
@end
