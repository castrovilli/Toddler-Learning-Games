//
//  AnimalScene.m
//  ToddlerLearningGames
//
//  Created by Karen Page Hanes on 12/5/13.
//  Copyright (c) 2013 Karen Page Hanes. All rights reserved.
//

#import "AnimalScene.h"

@interface AnimalScene ()

@property BOOL contentCreated;
@property BOOL bigCowOnScreen;
@property BOOL bigDuckOnScreen;
@property BOOL bigPigOnScreen;

@end

@implementation AnimalScene

- (void)didMoveToView: (SKView *) view
{
    if (!self.contentCreated)
    {
        [self createSceneContents];
        self.contentCreated = YES;
    }
    // Obtain the URL path to the sound file cow.wav.
    NSURL *cowSoundFileURL = [[NSBundle mainBundle] URLForResource: @"cow" withExtension: @"wav"];
    
    // Instantiate an audio player object and initialize it with the cow.wav audio file.
    // Store newly created audio player's object reference into the instance variable _cowAudioPlayer
    self.cowAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:cowSoundFileURL error:nil];
    
    // Obtain the URL path to the sound file pig.wav.
    NSURL *pigSoundFileURL = [[NSBundle mainBundle] URLForResource: @"pig" withExtension: @"wav"];

    // Instantiate an audio player object and initialize it with the pig.wav audio file.
    // Store newly created audio player's object reference into the instance variable _pigAudioPlayer
    self.pigAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:pigSoundFileURL error:nil];

    // Obtain the URL path to the sound file duck_quack.wav.
    NSURL *duckSoundFileURL = [[NSBundle mainBundle] URLForResource: @"duck_quack" withExtension: @"wav"];
    
    // Instantiate an audio player object and initialize it with the duck_quack.wav audio file.
    // Store newly created audio player's object reference into the instance variable _duckAudioPlayer
    self.duckAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:duckSoundFileURL error:nil];
}

- (void)createSceneContents
{
    self.backgroundColor = [SKColor whiteColor];
    self.scaleMode = SKSceneScaleModeAspectFit;
    
    //Initializes the nodes as variables.
    self.cow = [self cowNode];
    self.pig = [self pigNode];
    self.duck = [self duckNode];
    self.bigCow = [self bigCowNode];
    self.bigPig = [self bigPigNode];
    self.bigDuck = [self bigDuckNode];
    
    //No big pictures are on the screen.
    self.bigCowOnScreen = NO;
    self.bigPigOnScreen = NO;
    self.bigDuckOnScreen = NO;
    
    //Add the cow, pig, and duck node buttons.
    [self addChild: self.cow];
    [self addChild: self.pig];
    [self addChild: self.duck];

}
/* Creates a cow node button. */
- (SKSpriteNode *)cowNode
{
    SKSpriteNode *cowSprite = [SKSpriteNode spriteNodeWithImageNamed:@"cow.png"];
    cowSprite.position = CGPointMake(150, 600);
    cowSprite.name = @"cowSprite";
    [cowSprite setScale: 1.2];
    return cowSprite;
    
}

/* Creates a pig node button. */
- (SKSpriteNode *)pigNode
{
    SKSpriteNode *pigSprite = [SKSpriteNode spriteNodeWithImageNamed:@"pig.png"];
    pigSprite.position = CGPointMake(150, 400);
    pigSprite.name = @"pigSprite";
    [pigSprite setScale: 1];
    return pigSprite;
}

/* Creates a duck node button. */
- (SKSpriteNode *)duckNode
{
    SKSpriteNode *duckSprite = [SKSpriteNode spriteNodeWithImageNamed:@"duck.png"];
    duckSprite.position = CGPointMake(175, 150);
    duckSprite.name = @"duckSprite";
    [duckSprite setScale: 1];
    return duckSprite;
}

/* Creates a big cow node button. */
- (SKSpriteNode *)bigCowNode
{
    SKSpriteNode *bigCowSprite = [SKSpriteNode spriteNodeWithImageNamed:@"cow.png"];
    bigCowSprite.position = CGPointMake(600, 400);
    [bigCowSprite setScale: 2];
    bigCowSprite.name = @"bigCowSprite";
    return bigCowSprite;
}

/* Creates a big pig node button. */
- (SKSpriteNode *)bigPigNode
{
    SKSpriteNode *bigPigSprite = [SKSpriteNode spriteNodeWithImageNamed:@"pig.png"];
    bigPigSprite.position = CGPointMake(600, 400);
    [bigPigSprite setScale: 2];
    bigPigSprite.name = @"bigPigSprite";
    return bigPigSprite;
}

/* Creates a big duck node button. */
- (SKSpriteNode *)bigDuckNode
{
    SKSpriteNode *bigDuckSprite = [SKSpriteNode spriteNodeWithImageNamed:@"duck.png"];
    bigDuckSprite.position = CGPointMake(615, 400);
    [bigDuckSprite setScale: 2];
    bigDuckSprite.name = @"bigDuckSprite";
    return bigDuckSprite;
}

/* Handles events when the user touches a node. */
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //Gets the node's coordinates.
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInNode:self];
    SKNode *node = [self nodeAtPoint:location];
    
    //Removes node from parent when action is called.
    SKAction *removeNode = [SKAction removeFromParent];
    
    //User tapped the cow node button.
    if ([node.name isEqualToString:@"cowSprite"]) {
        if(self.bigPigOnScreen == YES){
            [self.bigPig runAction:removeNode];
        }
        if(self.bigDuckOnScreen == YES){
            [self.bigDuck runAction:removeNode];
        }
        
        self.animalLabel.hidden = YES;
        self.message.text = @"Click on the Big Cow to Hear Its Sound!";
        
        if(self.bigCowOnScreen == NO){
            [self addChild: self.bigCow];
        }
        
        self.bigCowOnScreen = YES;
        self.bigDuckOnScreen = NO;
        self.bigPigOnScreen = NO;
        [super reloadInputViews];
    }
    //User tapped the pig node button.
    else if([node.name isEqualToString:@"pigSprite"]){
        if(self.bigCowOnScreen == YES){
            [self.bigCow runAction:removeNode];
        }
        if(self.bigDuckOnScreen == YES){
            [self.bigDuck runAction:removeNode];
        }
        
        self.animalLabel.hidden = YES;
        self.message.text = @"Click on the Big Pig to Hear Its Sound!";
        
        if(self.bigPigOnScreen == NO){
            [self addChild: self.bigPig];
        }
        
        self.bigCowOnScreen = NO;
        self.bigDuckOnScreen = NO;
        self.bigPigOnScreen = YES;
        [super reloadInputViews];
    }
    //User tapped the duck node button.
    else if([node.name isEqualToString:@"duckSprite"]){
        if(self.bigPigOnScreen == YES){
            [self.bigPig runAction:removeNode];
        }
        if(self.bigCowOnScreen == YES){
            [self.bigCow runAction:removeNode];
        }
        
        self.animalLabel.hidden = YES;
        self.message.text = @"Click on the Big Duck to Hear Its Sound!";
        
        if(self.bigDuckOnScreen == NO){
            [self addChild: self.bigDuck];
        }
        
        self.bigCowOnScreen = NO;
        self.bigDuckOnScreen = YES;
        self.bigPigOnScreen = NO;
        [super reloadInputViews];
    }
    //User tapped the big cow node button.
    else if ([node.name isEqualToString:@"bigCowSprite"]) {
        //Plays the cow sound.
        [self.cowAudioPlayer play];
        self.animalLabel.text = @"The Cow Says Moo!";
        self.animalLabel.hidden = NO;
        [super reloadInputViews];

    }
    //User tapped the big pig node button.
    else if([node.name isEqualToString:@"bigPigSprite"]){
        //Plays the pig sound.
        [self.pigAudioPlayer play];
        self.animalLabel.text = @"The Pig Says Oink!";
        self.animalLabel.hidden = NO;
        [super reloadInputViews];
        
    }
    //User tapped the duck node button.
    else if([node.name isEqualToString:@"bigDuckSprite"]){
        //Plays the duck sound.
        [self.duckAudioPlayer play];
        self.animalLabel.text = @"The Duck Says Quack!";
        self.animalLabel.hidden = NO;
        [super reloadInputViews];
    }
    
}

@end
