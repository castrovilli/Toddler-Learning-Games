//
//  ColoringScene.h
//  ToddlerLearningGames
//
//  Created by Karen Page Hanes on 12/11/13.
//  Copyright (c) 2013 Karen Page Hanes. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ColoringScene : SKScene

//Audio players for the color wav files
@property (nonatomic, strong) AVAudioPlayer *redAudioPlayer;
@property (nonatomic, strong) AVAudioPlayer *blueAudioPlayer;
@property (nonatomic, strong) AVAudioPlayer *yellowAudioPlayer;
@property (nonatomic, strong) AVAudioPlayer *greenAudioPlayer;
@property (nonatomic, strong) AVAudioPlayer *brownAudioPlayer;

//Nodes representing the colors a user can use
@property (nonatomic, strong) SKSpriteNode *red;
@property (nonatomic, strong) SKSpriteNode *yellow;
@property (nonatomic, strong) SKSpriteNode *blue;
@property (nonatomic, strong) SKSpriteNode *green;
@property (nonatomic, strong) SKSpriteNode *brown;
@property (nonatomic, strong) SKSpriteNode *eraser;

//Label button that allows the user to color a new page
@property (nonatomic, strong) SKLabelNode *selectPictureButton;

//Coloring pages a user can select
@property (nonatomic, strong) SKSpriteNode *turkey;
@property (nonatomic, strong) SKSpriteNode *turkeyButton;
@property (nonatomic, strong) SKSpriteNode *flowers;
@property (nonatomic, strong) SKSpriteNode *flowersButton;

@property (nonatomic, strong) UILabel *message;

@end
