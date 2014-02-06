//
//  ConnectTheDots.h
//  ToddlerLearningGames
//
//  Created by Karen Page Hanes on 12/12/13.
//  Copyright (c) 2013 Karen Page Hanes. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ConnectTheDotsScene : SKScene

//Audio players that say the numbers as they are connected
@property (nonatomic, strong) AVAudioPlayer *oneAudioPlayer;
@property (nonatomic, strong) AVAudioPlayer *twoAudioPlayer;
@property (nonatomic, strong) AVAudioPlayer *threeAudioPlayer;
@property (nonatomic, strong) AVAudioPlayer *fourAudioPlayer;
@property (nonatomic, strong) AVAudioPlayer *fiveAudioPlayer;
@property (nonatomic, strong) AVAudioPlayer *sixAudioPlayer;
@property (nonatomic, strong) AVAudioPlayer *sevenAudioPlayer;
@property (nonatomic, strong) AVAudioPlayer *eightAudioPlayer;
@property (nonatomic, strong) AVAudioPlayer *nineAudioPlayer;
@property (nonatomic, strong) AVAudioPlayer *tenAudioPlayer;

//Audio player that plays applause when the user successfully connects a puzzle
@property (nonatomic, strong) AVAudioPlayer *applaudAudioPlayer;

//Nodes representing the dots being connected
@property (nonatomic, strong) SKSpriteNode *flower_one;
@property (nonatomic, strong) SKSpriteNode *flower_two;
@property (nonatomic, strong) SKSpriteNode *flower_three;
@property (nonatomic, strong) SKSpriteNode *flower_four;
@property (nonatomic, strong) SKSpriteNode *flower_five;
@property (nonatomic, strong) SKSpriteNode *flower_six;
@property (nonatomic, strong) SKSpriteNode *flower_seven;
@property (nonatomic, strong) SKSpriteNode *flower_eight;
@property (nonatomic, strong) SKSpriteNode *flower_nine;
@property (nonatomic, strong) SKSpriteNode *flower_ten;
@property (nonatomic, strong) SKSpriteNode *dog_one;
@property (nonatomic, strong) SKSpriteNode *dog_two;
@property (nonatomic, strong) SKSpriteNode *dog_three;
@property (nonatomic, strong) SKSpriteNode *dog_four;
@property (nonatomic, strong) SKSpriteNode *dog_five;
@property (nonatomic, strong) SKSpriteNode *dog_six;
@property (nonatomic, strong) SKSpriteNode *dog_seven;
@property (nonatomic, strong) SKSpriteNode *dog_eight;
@property (nonatomic, strong) SKSpriteNode *dog_nine;
@property (nonatomic, strong) SKSpriteNode *dog_ten;

@property (nonatomic, strong) SKLabelNode *selectPictureButton;

//Nodes representing the pictures being connected
@property (nonatomic, strong) SKSpriteNode *flower;
@property (nonatomic, strong) SKSpriteNode *dog;
@property (nonatomic, strong) SKSpriteNode *flowerButton;
@property (nonatomic, strong) SKSpriteNode *dogButton;
@property (nonatomic, strong) SKSpriteNode *completedFlower;
@property (nonatomic, strong) SKSpriteNode *completedDog;

@property (nonatomic, strong) UILabel *message;

@end
