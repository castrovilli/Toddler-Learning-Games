//
//  AnimalScene.h
//  ToddlerLearningGames
//
//  Created by Karen Page Hanes on 12/5/13.
//  Copyright (c) 2013 Karen Page Hanes. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import <AVFoundation/AVFoundation.h>

@interface AnimalScene : SKScene

//Audio players for the animals
@property (nonatomic, strong) AVAudioPlayer *cowAudioPlayer;
@property (nonatomic, strong) AVAudioPlayer *pigAudioPlayer;
@property (nonatomic, strong) AVAudioPlayer *duckAudioPlayer;

//Nodes that allow the user to select an animal
@property (nonatomic, strong) SKSpriteNode *cow;
@property (nonatomic, strong) SKSpriteNode *pig;
@property (nonatomic, strong) SKSpriteNode *duck;

//Nodes that allow the user to hear the sound of a selected animal
@property (nonatomic, strong) SKSpriteNode *bigCow;
@property (nonatomic, strong) SKSpriteNode *bigPig;
@property (nonatomic, strong) SKSpriteNode *bigDuck;

@property (nonatomic, strong) UILabel *animalLabel;
@property (nonatomic, strong) UILabel *message;

@end
