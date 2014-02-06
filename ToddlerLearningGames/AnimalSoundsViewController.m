//
//  AnimalSoundsViewController.m
//  ToddlerLearningGames
//
//  Created by Karen Page Hanes on 11/12/13.
//  Copyright (c) 2013 Karen Page Hanes. All rights reserved.
//

#import "AnimalSoundsViewController.h"

@interface AnimalSoundsViewController ()

@property AnimalScene* animal;

@end

@implementation AnimalSoundsViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    //Create a new animal scene and present it.
    self.animal  = [[AnimalScene alloc] initWithSize:CGSizeMake(1024,768)];
    SKView *animalView = (SKView *) self.view;
    self.animal.animalLabel = self.animalLabel;
    self.animal.message = self.message;
    [animalView presentScene: self.animal];
}

-(void) viewWillDisappear:(BOOL)animated {
    // Just before the view is dismissed, covered, or otherwise hidden, stop the audio playing.
    [self.animal.cowAudioPlayer stop];
    [self.animal.pigAudioPlayer stop];
    [self.animal.duckAudioPlayer stop];
    
    // Drop the object reference to the audio players.
    self.animal.cowAudioPlayer = nil;
    self.animal.pigAudioPlayer = nil;
    self.animal.duckAudioPlayer = nil;
}

@end
