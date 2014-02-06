//
//  ConnectTheDots.m
//  ToddlerLearningGames
//
//  Created by Karen Page Hanes on 12/12/13.
//  Copyright (c) 2013 Karen Page Hanes. All rights reserved.
//

#import "ConnectTheDotsScene.h"

@interface ConnectTheDotsScene ()

@property BOOL contentCreated;
@property BOOL oneSelected;
@property BOOL twoSelected;
@property BOOL threeSelected;
@property BOOL fourSelected;
@property BOOL fiveSelected;
@property BOOL sixSelected;
@property BOOL sevenSelected;
@property BOOL eightSelected;
@property BOOL nineSelected;
@property BOOL tenSelected;
@property BOOL flowerSelected;
@property BOOL dogSelected;
@property BOOL dogCompleted;
@property BOOL flowerCompleted;

//Sprites that the user has drawn on the screen.
@property (strong, nonatomic) NSMutableArray *drawnSprites;

@end

@implementation ConnectTheDotsScene

- (void)didMoveToView: (SKView *) view
{
    if (!self.contentCreated)
    {
        [self createSceneContents];
        self.contentCreated = YES;
    }
    // Obtain the URL path to the sound file one.wav.
    NSURL *oneSoundFileURL = [[NSBundle mainBundle] URLForResource: @"one" withExtension: @"wav"];
    
    // Instantiate an audio player object and initialize it with the one.wav audio file.
    // Store newly created audio player's object reference into the instance variable _oneAudioPlayer
    self.oneAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:oneSoundFileURL error:nil];
    
    // Obtain the URL path to the sound file two.wav.
    NSURL *twoSoundFileURL = [[NSBundle mainBundle] URLForResource: @"two" withExtension: @"wav"];
    
    // Instantiate an audio player object and initialize it with the two.wav audio file.
    // Store newly created audio player's object reference into the instance variable _twoAudioPlayer
    self.twoAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:twoSoundFileURL error:nil];
    
    // Obtain the URL path to the sound file three.wav.
    NSURL *threeSoundFileURL = [[NSBundle mainBundle] URLForResource: @"three" withExtension: @"wav"];
    
    // Instantiate an audio player object and initialize it with the three.wav audio file.
    // Store newly created audio player's object reference into the instance variable _threeAudioPlayer
    self.threeAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:threeSoundFileURL error:nil];
    
    // Obtain the URL path to the sound file four.wav.
    NSURL *fourSoundFileURL = [[NSBundle mainBundle] URLForResource: @"four" withExtension: @"wav"];
    
    // Instantiate an audio player object and initialize it with the four.wav audio file.
    // Store newly created audio player's object reference into the instance variable _fourAudioPlayer
    self.fourAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:fourSoundFileURL error:nil];
    
    // Obtain the URL path to the sound file five.wav.
    NSURL *fiveSoundFileURL = [[NSBundle mainBundle] URLForResource: @"five" withExtension: @"wav"];
    
    // Instantiate an audio player object and initialize it with the five.wav audio file.
    // Store newly created audio player's object reference into the instance variable _fiveAudioPlayer
    self.fiveAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:fiveSoundFileURL error:nil];
    
    // Obtain the URL path to the sound file six.wav.
    NSURL *sixSoundFileURL = [[NSBundle mainBundle] URLForResource: @"six" withExtension: @"wav"];
    
    // Instantiate an audio player object and initialize it with the six.wav audio file.
    // Store newly created audio player's object reference into the instance variable _sixAudioPlayer
    self.sixAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:sixSoundFileURL error:nil];
    
    // Obtain the URL path to the sound file seven.wav.
    NSURL *sevenSoundFileURL = [[NSBundle mainBundle] URLForResource: @"seven" withExtension: @"wav"];
    
    // Instantiate an audio player object and initialize it with the seven.wav audio file.
    // Store newly created audio player's object reference into the instance variable _sevenAudioPlayer
    self.sevenAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:sevenSoundFileURL error:nil];
    
    // Obtain the URL path to the sound file eight.wav.
    NSURL *eightSoundFileURL = [[NSBundle mainBundle] URLForResource: @"eight" withExtension: @"wav"];
    
    // Instantiate an audio player object and initialize it with the eight.wav audio file.
    // Store newly created audio player's object reference into the instance variable _eightAudioPlayer
    self.eightAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:eightSoundFileURL error:nil];
    
    // Obtain the URL path to the sound file nine.wav.
    NSURL *nineSoundFileURL = [[NSBundle mainBundle] URLForResource: @"nine" withExtension: @"wav"];
    
    // Instantiate an audio player object and initialize it with the nine.wav audio file.
    // Store newly created audio player's object reference into the instance variable _nineAudioPlayer
    self.nineAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:nineSoundFileURL error:nil];
    
    // Obtain the URL path to the sound file ten.wav.
    NSURL *tenSoundFileURL = [[NSBundle mainBundle] URLForResource: @"ten" withExtension: @"wav"];
    
    // Instantiate an audio player object and initialize it with the ten.wav audio file.
    // Store newly created audio player's object reference into the instance variable _tenAudioPlayer
    self.tenAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:tenSoundFileURL error:nil];
    
    // Obtain the URL path to the sound file applaudSound.wav.
    NSURL *applaudSoundFileURL = [[NSBundle mainBundle] URLForResource: @"applaudSound" withExtension: @"wav"];
    
    // Instantiate an audio player object and initialize it with the applaudSound.wav audio file.
    // Store newly created audio player's object reference into the instance variable _applaudAudioPlayer
    self.applaudAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:applaudSoundFileURL error:nil];
    
    self.drawnSprites = [[NSMutableArray alloc] init];
}

- (void)createSceneContents
{
    self.backgroundColor = [SKColor whiteColor];
    self.scaleMode = SKSceneScaleModeAspectFit;
    
    //Initializes the nodes as variables.
    self.flower_one = [self flowerOneNode];
    self.flower_two = [self flowerTwoNode];
    self.flower_three = [self flowerThreeNode];
    self.flower_four = [self flowerFourNode];
    self.flower_five = [self flowerFiveNode];
    self.flower_six = [self flowerSixNode];
    self.flower_seven = [self flowerSevenNode];
    self.flower_eight = [self flowerEightNode];
    self.flower_nine = [self flowerNineNode];
    self.flower_ten = [self flowerTenNode];
    self.dog_one = [self dogOneNode];
    self.dog_two = [self dogTwoNode];
    self.dog_three = [self dogThreeNode];
    self.dog_four = [self dogFourNode];
    self.dog_five = [self dogFiveNode];
    self.dog_six = [self dogSixNode];
    self.dog_seven = [self dogSevenNode];
    self.dog_eight = [self dogEightNode];
    self.dog_nine = [self dogNineNode];
    self.dog_ten = [self dogTenNode];
    self.dogButton = [self dogButtonNode];
    self.flowerButton = [self flowerButtonNode];
    self.dog = [self dogNode];
    self.flower = [self flowerNode];
    self.selectPictureButton = [self newPictureNode];
    self.completedDog = [self completedDogNode];
    self.completedFlower = [self completedFlowerNode];
    
    self.oneSelected = NO;
    self.twoSelected = NO;
    self.threeSelected = NO;
    self.fourSelected = NO;
    self.fiveSelected = NO;
    self.sixSelected = NO;
    self.sevenSelected = NO;
    self.eightSelected = NO;
    self.nineSelected = NO;
    self.tenSelected = NO;
    self.dogSelected = NO;
    self.flowerSelected = NO;
    self.dogCompleted = NO;
    self.flowerCompleted = NO;
    
    //Add dog and flower buttons on screen.
    [self addChild: self.dogButton];
    [self addChild: self.flowerButton];
    
}

/* Creates a completed flower node button. */
- (SKSpriteNode *)completedFlowerNode
{
    SKSpriteNode *flowerSprite = [SKSpriteNode spriteNodeWithImageNamed:@"completed_flower.png"];
    flowerSprite.position = CGPointMake(500, 350);
    [flowerSprite setScale: 2];
    return flowerSprite;
}

/* Creates a completed dog node button. */
- (SKSpriteNode *)completedDogNode
{
    SKSpriteNode *dogSprite = [SKSpriteNode spriteNodeWithImageNamed:@"completed_dog.png"];
    dogSprite.position = CGPointMake(500, 350);
    [dogSprite setScale: 2];
    return dogSprite;
}

/* Creates a new picture node button that allows the user to select a new picture. */
- (SKLabelNode *)newPictureNode
{
    SKLabelNode *pictureNode = [SKLabelNode labelNodeWithFontNamed:@"TimesNewRoman"];
    pictureNode.text = @"Select a New Picture!";
    pictureNode.fontSize = 20;
    pictureNode.name = @"pictureNode";
    pictureNode.fontColor = [UIColor blueColor];
    pictureNode.position = CGPointMake(150, 650);
    return pictureNode;
}

/* Creates a flower node button. */
- (SKSpriteNode *)flowerButtonNode
{
    SKSpriteNode *flowerButtonSprite = [SKSpriteNode spriteNodeWithImageNamed:@"flower.png"];
    flowerButtonSprite.position = CGPointMake(250, 350);
    [flowerButtonSprite setScale: 2];
    flowerButtonSprite.name = @"flowerButtonSprite";
    return flowerButtonSprite;
}

/* Creates a dog node button. */
- (SKSpriteNode *)dogButtonNode
{
    SKSpriteNode *dogButtonSprite = [SKSpriteNode spriteNodeWithImageNamed:@"dog.png"];
    dogButtonSprite.position = CGPointMake(750, 350);
    [dogButtonSprite setScale: 2];
    dogButtonSprite.name = @"dogButtonSprite";
    return dogButtonSprite;
}


/* Creates a flowers node. */
- (SKSpriteNode *)flowerNode
{
    SKSpriteNode *flowerSprite = [SKSpriteNode spriteNodeWithImageNamed:@"flower.png"];
    flowerSprite.position = CGPointMake(500, 350);
    [flowerSprite setScale: 2];
    flowerSprite.name = @"flowerSprite";
    return flowerSprite;
}

/* Creates a dog node. */
- (SKSpriteNode *)dogNode
{
    SKSpriteNode *dogSprite = [SKSpriteNode spriteNodeWithImageNamed:@"dog.png"];
    dogSprite.position = CGPointMake(500, 350);
    [dogSprite setScale: 2];
    dogSprite.name = @"dogSprite";
    return dogSprite;
}

/* Creates a flower_one node button. */
- (SKSpriteNode *)flowerOneNode
{
    SKSpriteNode *flowerOneSprite = [SKSpriteNode spriteNodeWithColor:[UIColor blackColor] size:CGSizeMake(12, 12)];
    flowerOneSprite.position = CGPointMake(375, 500);
    flowerOneSprite.name = @"flowerOneSprite";
    return flowerOneSprite;
    
}

/* Creates a flower_two node button. */
- (SKSpriteNode *)flowerTwoNode
{
    SKSpriteNode *flowerTwoSprite = [SKSpriteNode spriteNodeWithColor:[UIColor blackColor] size:CGSizeMake(12, 12)];
    flowerTwoSprite.position = CGPointMake(445, 470);
    flowerTwoSprite.name = @"flowerTwoSprite";
    return flowerTwoSprite;
    
}

/* Creates a flower_three node button. */
- (SKSpriteNode *)flowerThreeNode
{
    SKSpriteNode *flowerThreeSprite = [SKSpriteNode spriteNodeWithColor:[UIColor blackColor] size:CGSizeMake(12, 12)];
    flowerThreeSprite.position = CGPointMake(508, 555);
    flowerThreeSprite.name = @"flowerThreeSprite";
    return flowerThreeSprite;
    
}

/* Creates a flower_four node button. */
- (SKSpriteNode *)flowerFourNode
{
    SKSpriteNode *flowerFourSprite = [SKSpriteNode spriteNodeWithColor:[UIColor blackColor] size:CGSizeMake(12, 12)];
    flowerFourSprite.position = CGPointMake(553, 471);
    flowerFourSprite.name = @"flowerFourSprite";
    return flowerFourSprite;
    
}

/* Creates a flower_five node button. */
- (SKSpriteNode *)flowerFiveNode
{
    SKSpriteNode *flowerFiveSprite = [SKSpriteNode spriteNodeWithColor:[UIColor blackColor] size:CGSizeMake(12, 12)];
    flowerFiveSprite.position = CGPointMake(635, 502);
    flowerFiveSprite.name = @"flowerFiveSprite";
    return flowerFiveSprite;
    
}

/* Creates a flower_six node button. */
- (SKSpriteNode *)flowerSixNode
{
    SKSpriteNode *flowerSixSprite = [SKSpriteNode spriteNodeWithColor:[UIColor blackColor] size:CGSizeMake(12, 12)];
    flowerSixSprite.position = CGPointMake(604, 410);
    flowerSixSprite.name = @"flowerSixSprite";
    return flowerSixSprite;
    
}

/* Creates a flower_seven node button. */
- (SKSpriteNode *)flowerSevenNode
{
    SKSpriteNode *flowerSevenSprite = [SKSpriteNode spriteNodeWithColor:[UIColor blackColor] size:CGSizeMake(12, 12)];
    flowerSevenSprite.position = CGPointMake(530, 365);
    flowerSevenSprite.name = @"flowerSevenSprite";
    return flowerSevenSprite;
    
}

/* Creates a flower_eight node button. */
- (SKSpriteNode *)flowerEightNode
{
    SKSpriteNode *flowerEightSprite = [SKSpriteNode spriteNodeWithColor:[UIColor blackColor] size:CGSizeMake(12, 12)];
    flowerEightSprite.position = CGPointMake(492, 247);
    flowerEightSprite.name = @"flowerEightSprite";
    return flowerEightSprite;
    
}

/* Creates a flower_nine node button. */
- (SKSpriteNode *)flowerNineNode
{
    SKSpriteNode *flowerNineSprite = [SKSpriteNode spriteNodeWithColor:[UIColor blackColor] size:CGSizeMake(12, 12)];
    flowerNineSprite.position = CGPointMake(452, 365);
    flowerNineSprite.name = @"flowerNineSprite";
    return flowerNineSprite;
    
}

/* Creates a flower_ten node button. */
- (SKSpriteNode *)flowerTenNode
{
    SKSpriteNode *flowerTenSprite = [SKSpriteNode spriteNodeWithColor:[UIColor blackColor] size:CGSizeMake(12, 12)];
    flowerTenSprite.position = CGPointMake(392, 407);
    flowerTenSprite.name = @"flowerTenSprite";
    return flowerTenSprite;
    
}

/* Creates a dog_one node button. */
- (SKSpriteNode *)dogOneNode
{
    SKSpriteNode *dogOneSprite = [SKSpriteNode spriteNodeWithColor:[UIColor blackColor] size:CGSizeMake(12, 12)];
    dogOneSprite.position = CGPointMake(368, 130);
    dogOneSprite.name = @"dogOneSprite";
    return dogOneSprite;
    
}

/* Creates a dog_two node button. */
- (SKSpriteNode *)dogTwoNode
{
    SKSpriteNode *dogTwoSprite = [SKSpriteNode spriteNodeWithColor:[UIColor blackColor] size:CGSizeMake(12, 12)];
    dogTwoSprite.position = CGPointMake(395, 222);
    dogTwoSprite.name = @"dogTwoSprite";
    return dogTwoSprite;
    
}

/* Creates a dog_three node button. */
- (SKSpriteNode *)dogThreeNode
{
    SKSpriteNode *dogThreeSprite = [SKSpriteNode spriteNodeWithColor:[UIColor blackColor] size:CGSizeMake(12, 12)];
    dogThreeSprite.position = CGPointMake(368, 267);
    dogThreeSprite.name = @"dogThreeSprite";
    return dogThreeSprite;
    
}

/* Creates a dog_four node button. */
- (SKSpriteNode *)dogFourNode
{
    SKSpriteNode *dogFourSprite = [SKSpriteNode spriteNodeWithColor:[UIColor blackColor] size:CGSizeMake(12, 12)];
    dogFourSprite.position = CGPointMake(392, 425);
    dogFourSprite.name = @"dogFourSprite";
    return dogFourSprite;
    
}

/* Creates a dog_five node button. */
- (SKSpriteNode *)dogFiveNode
{
    SKSpriteNode *dogFiveSprite = [SKSpriteNode spriteNodeWithColor:[UIColor blackColor] size:CGSizeMake(12, 12)];
    dogFiveSprite.position = CGPointMake(565, 472);
    dogFiveSprite.name = @"dogFiveSprite";
    return dogFiveSprite;
    
}

/* Creates a dog_six node button. */
- (SKSpriteNode *)dogSixNode
{
    SKSpriteNode *dogSixSprite = [SKSpriteNode spriteNodeWithColor:[UIColor blackColor] size:CGSizeMake(12, 12)];
    dogSixSprite.position = CGPointMake(572, 402);
    dogSixSprite.name = @"dogSixSprite";
    return dogSixSprite;
    
}

/* Creates a dog_seven node button. */
- (SKSpriteNode *)dogSevenNode
{
    SKSpriteNode *dogSevenSprite = [SKSpriteNode spriteNodeWithColor:[UIColor blackColor] size:CGSizeMake(12, 12)];
    dogSevenSprite.position = CGPointMake(633, 355);
    dogSevenSprite.name = @"dogSevenSprite";
    return dogSevenSprite;
    
}

/* Creates a dog_eight node button. */
- (SKSpriteNode *)dogEightNode
{
    SKSpriteNode *dogEightSprite = [SKSpriteNode spriteNodeWithColor:[UIColor blackColor] size:CGSizeMake(12, 12)];
    dogEightSprite.position = CGPointMake(563, 273);
    dogEightSprite.name = @"dogEightSprite";
    return dogEightSprite;
    
}

/* Creates a dog_nine node button. */
- (SKSpriteNode *)dogNineNode
{
    SKSpriteNode *dogNineSprite = [SKSpriteNode spriteNodeWithColor:[UIColor blackColor] size:CGSizeMake(12, 12)];
    dogNineSprite.position = CGPointMake(515, 283);
    dogNineSprite.name = @"dogNineSprite";
    return dogNineSprite;
    
}

/* Creates a dog_ten node button. */
- (SKSpriteNode *)dogTenNode
{
    SKSpriteNode *dogTenSprite = [SKSpriteNode spriteNodeWithColor:[UIColor blackColor] size:CGSizeMake(12, 12)];
    dogTenSprite.position = CGPointMake(572, 130);
    dogTenSprite.name = @"dogTenSprite";
    return dogTenSprite;
    
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
    
    //User selected the new picture node.
    if ([node.name isEqualToString:@"pictureNode"]) {
        self.message.textColor = [UIColor blueColor];
        self.message.text = @"Select a Picture to Connect!";
        [super reloadInputViews];
        
        [self.selectPictureButton runAction:removeNode];
        
        //Dog is connected.
        if(self.dogCompleted == YES){
            [self.completedDog runAction:removeNode];
            self.dogCompleted = NO;
        }
        //Flower is connected.
        else if(self.flowerCompleted == YES){
            [self.completedFlower runAction:removeNode];
            self.flowerCompleted = NO;
        }
        //Flower is currently being connected.
        else if(self.flowerSelected == YES){
            [self.flower_one runAction:removeNode];
            [self.flower_two runAction:removeNode];
            [self.flower_three runAction:removeNode];
            [self.flower_four runAction:removeNode];
            [self.flower_five runAction:removeNode];
            [self.flower_six runAction:removeNode];
            [self.flower_seven runAction:removeNode];
            [self.flower_eight runAction:removeNode];
            [self.flower_nine runAction:removeNode];
            [self.flower_ten runAction:removeNode];
            [self.flower runAction:removeNode];
        }
        //Dog is currently being connected.
        else if(self.dogSelected == YES){
            [self.dog_one runAction:removeNode];
            [self.dog_two runAction:removeNode];
            [self.dog_three runAction:removeNode];
            [self.dog_four runAction:removeNode];
            [self.dog_five runAction:removeNode];
            [self.dog_six runAction:removeNode];
            [self.dog_seven runAction:removeNode];
            [self.dog_eight runAction:removeNode];
            [self.dog_nine runAction:removeNode];
            [self.dog_ten runAction:removeNode];
            [self.dog runAction:removeNode];
        }
        
        //Removes all sprites drawn by the user.
        for(NSUInteger i = 0; i < self.drawnSprites.count; i++){
            SKSpriteNode *node = [self.drawnSprites objectAtIndex:i];
            [node runAction:removeNode];
        }
        
        self.oneSelected = NO;
        self.twoSelected = NO;
        self.threeSelected = NO;
        self.fourSelected = NO;
        self.fiveSelected = NO;
        self.sixSelected = NO;
        self.sevenSelected = NO;
        self.eightSelected = NO;
        self.nineSelected = NO;
        self.tenSelected = NO;
        
        [self addChild: self.dogButton];
        [self addChild: self.flowerButton];
        
        
    }
    //User tapped the flower node button.
    else if ([node.name isEqualToString:@"flowerButtonSprite"]) {
        self.message.textColor = [UIColor blueColor];
        self.message.text = @"Connect the Flower!";
        [super reloadInputViews];
        
        [self.flowerButton runAction:removeNode];
        [self.dogButton runAction:removeNode];
        
        [self addChild: self.flower];
        [self addChild: self.flower_one];
        [self addChild: self.flower_two];
        [self addChild: self.flower_three];
        [self addChild: self.flower_four];
        [self addChild: self.flower_five];
        [self addChild: self.flower_six];
        [self addChild: self.flower_seven];
        [self addChild: self.flower_eight];
        [self addChild: self.flower_nine];
        [self addChild: self.flower_ten];
        [self addChild: self.selectPictureButton];
        
        self.flowerSelected = YES;

    }
    //User tapped the dog node button.
    else if([node.name isEqualToString:@"dogButtonSprite"]){
        self.message.textColor = [UIColor blueColor];
        self.message.text = @"Connect the Dog!";
        [super reloadInputViews];
        
        
        [self.flowerButton runAction:removeNode];
        [self.dogButton runAction:removeNode];
        
         [self addChild: self.dog];
        [self addChild: self.dog_one];
        [self addChild: self.dog_two];
        [self addChild: self.dog_three];
        [self addChild: self.dog_four];
        [self addChild: self.dog_five];
        [self addChild: self.dog_six];
        [self addChild: self.dog_seven];
        [self addChild: self.dog_eight];
        [self addChild: self.dog_nine];
        [self addChild: self.dog_ten];
        [self addChild: self.selectPictureButton];
        
        self.dogSelected = YES;
        
    }
    //User tapped the first dog dot; starts the game.
    else if (node.position.x == self.dog_one.position.x && node.position.y == self.dog_one.position.y) {
        //Plays the one sound.
        [self.oneAudioPlayer play];
        [super reloadInputViews];
        
        self.oneSelected = YES;
        self.twoSelected = NO;
        self.threeSelected = NO;
        self.fourSelected = NO;
        self.fiveSelected = NO;
        self.sixSelected = NO;
        self.sevenSelected = NO;
        self.eightSelected = NO;
        self.nineSelected = NO;
        self.tenSelected = NO;
        
    }
    //User tapped the first flower dot; starts the game.
    else if (node.position.x == self.flower_one.position.x && node.position.y == self.flower_one.position.y) {
        //Plays the one sound.
        [self.oneAudioPlayer play];
        [super reloadInputViews];
        
        self.oneSelected = YES;
        self.twoSelected = NO;
        self.threeSelected = NO;
        self.fourSelected = NO;
        self.fiveSelected = NO;
        self.sixSelected = NO;
        self.sevenSelected = NO;
        self.eightSelected = NO;
        self.nineSelected = NO;
        self.tenSelected = NO;
        
    }
}

/* Handles events when the user drags. */
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    
    //Gets the node's coordinates.
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInNode:self];
    SKNode *node = [self nodeAtPoint:location];
    
    UIColor *color = [UIColor blackColor];
    
    //Removes node from parent when action is called.
    SKAction *removeNode = [SKAction removeFromParent];
    
    //Note: If the user is within 5 pixels of the node, the node is considered to have been tapped.
    
    //User tapped the dog one node button.
    if ((node.position.x - 5) <= self.dog_one.position.x && (node.position.x + 5) >= self.dog_one.position.x && (node.position.y - 5) <= self.dog_one.position.y && (node.position.y + 5) >= self.dog_one.position.y) {
        //Plays the one sound.
        [self.oneAudioPlayer play];
        [super reloadInputViews];
        
        self.oneSelected = YES;
        self.twoSelected = NO;
        self.threeSelected = NO;
        self.fourSelected = NO;
        self.fiveSelected = NO;
        self.sixSelected = NO;
        self.sevenSelected = NO;
        self.eightSelected = NO;
        self.nineSelected = NO;
        self.tenSelected = NO;
        
    }
    //User tapped the dog two node button.
    else if((node.position.x - 5) <= self.dog_two.position.x && (node.position.x + 5) >= self.dog_two.position.x && (node.position.y - 5) <= self.dog_two.position.y && (node.position.y + 5) >= self.dog_two.position.y && self.oneSelected == YES){
        //Plays the two sound.
        [self.twoAudioPlayer play];
        [super reloadInputViews];
        
        self.oneSelected = NO;
        self.twoSelected = YES;
        self.threeSelected = NO;
        self.fourSelected = NO;
        self.fiveSelected = NO;
        self.sixSelected = NO;
        self.sevenSelected = NO;
        self.eightSelected = NO;
        self.nineSelected = NO;
        self.tenSelected = NO;
    }
    //User tapped the dog three button.
    else if((node.position.x - 5) <= self.dog_three.position.x && (node.position.x + 5) >= self.dog_three.position.x && (node.position.y - 5) <= self.dog_three.position.y && (node.position.y + 5) >= self.dog_three.position.y && self.twoSelected == YES){
        //Plays the three sound.
        [self.threeAudioPlayer play];
        [super reloadInputViews];
        
        self.oneSelected = NO;
        self.twoSelected = NO;
        self.threeSelected = YES;
        self.fourSelected = NO;
        self.fiveSelected = NO;
        self.sixSelected = NO;
        self.sevenSelected = NO;
        self.eightSelected = NO;
        self.nineSelected = NO;
        self.tenSelected = NO;

    }
    //User tapped the dog four node button.
    else if ((node.position.x - 5) <= self.dog_four.position.x && (node.position.x + 5) >= self.dog_four.position.x && (node.position.y - 5) <= self.dog_four.position.y && (node.position.y + 5) >= self.dog_four.position.y && self.threeSelected == YES) {
        //Plays the four sound.
        [self.fourAudioPlayer play];
        [super reloadInputViews];
        
        self.oneSelected = NO;
        self.twoSelected = NO;
        self.threeSelected = NO;
        self.fourSelected = YES;
        self.fiveSelected = NO;
        self.sixSelected = NO;
        self.sevenSelected = NO;
        self.eightSelected = NO;
        self.nineSelected = NO;
        self.tenSelected = NO;

        
    }
    //User tapped the dog five node button.
    else if ((node.position.x - 5) <= self.dog_five.position.x && (node.position.x + 5) >= self.dog_five.position.x && (node.position.y - 5) <= self.dog_five.position.y && (node.position.y + 5) >= self.dog_five.position.y && self.fourSelected == YES) {
        //Plays the five sound.
        [self.fiveAudioPlayer play];
        [super reloadInputViews];
        
        self.oneSelected = NO;
        self.twoSelected = NO;
        self.threeSelected = NO;
        self.fourSelected = NO;
        self.fiveSelected = YES;
        self.sixSelected = NO;
        self.sevenSelected = NO;
        self.eightSelected = NO;
        self.nineSelected = NO;
        self.tenSelected = NO;

        
    }
    //User tapped the dog six node button.
    else if((node.position.x - 5) <= self.dog_six.position.x && (node.position.x + 5) >= self.dog_six.position.x && (node.position.y - 5) <= self.dog_six.position.y && (node.position.y + 5) >= self.dog_six.position.y && self.fiveSelected == YES){
        //Plays the six sound.
        [self.sixAudioPlayer play];
        [super reloadInputViews];
        
        self.oneSelected = NO;
        self.twoSelected = NO;
        self.threeSelected = NO;
        self.fourSelected = NO;
        self.fiveSelected = NO;
        self.sixSelected = YES;
        self.sevenSelected = NO;
        self.eightSelected = NO;
        self.nineSelected = NO;
        self.tenSelected = NO;

    }
    //User tapped the dog seven button.
    else if((node.position.x - 5) <= self.dog_seven.position.x && (node.position.x + 5) >= self.dog_seven.position.x && (node.position.y - 5) <= self.dog_seven.position.y && (node.position.y + 5) >= self.dog_seven.position.y && self.sixSelected == YES){
        //Plays the seven sound.
        [self.sevenAudioPlayer play];
        [super reloadInputViews];
        
        self.oneSelected = NO;
        self.twoSelected = NO;
        self.threeSelected = NO;
        self.fourSelected = NO;
        self.fiveSelected = NO;
        self.sixSelected = NO;
        self.sevenSelected = YES;
        self.eightSelected = NO;
        self.nineSelected = NO;
        self.tenSelected = NO;

    }
    //User tapped the dog eight node button.
    else if ((node.position.x - 5) <= self.dog_eight.position.x && (node.position.x + 5) >= self.dog_eight.position.x && (node.position.y - 5) <= self.dog_eight.position.y && (node.position.y + 5) >= self.dog_eight.position.y && self.sevenSelected == YES) {
        //Plays the eight sound.
        [self.eightAudioPlayer play];
        [super reloadInputViews];
        
        self.oneSelected = NO;
        self.twoSelected = NO;
        self.threeSelected = NO;
        self.fourSelected = NO;
        self.fiveSelected = NO;
        self.sixSelected = NO;
        self.sevenSelected = NO;
        self.eightSelected = YES;
        self.nineSelected = NO;
        self.tenSelected = NO;

        
    }
    //User tapped the dog nine button.
    else if((node.position.x - 5) <= self.dog_nine.position.x && (node.position.x + 5) >= self.dog_nine.position.x && (node.position.y - 5) <= self.dog_nine.position.y && (node.position.y + 5) >= self.dog_nine.position.y && self.eightSelected == YES){
        //Plays the nine sound.
        [self.nineAudioPlayer play];
        [super reloadInputViews];
        
        self.oneSelected = NO;
        self.twoSelected = NO;
        self.threeSelected = NO;
        self.fourSelected = NO;
        self.fiveSelected = NO;
        self.sixSelected = NO;
        self.sevenSelected = NO;
        self.eightSelected = NO;
        self.nineSelected = YES;
        self.tenSelected = NO;

    }
    //User tapped the dog ten node button; dog is completed.
    else if ((node.position.x - 5) <= self.dog_ten.position.x && (node.position.x + 5) >= self.dog_ten.position.x && (node.position.y - 5) <= self.dog_ten.position.y && (node.position.y + 5) >= self.dog_ten.position.y && self.nineSelected == YES) {
        //Plays the ten sound.
        [self.tenAudioPlayer play];
        [super reloadInputViews];
        
        self.oneSelected = NO;
        self.twoSelected = NO;
        self.threeSelected = NO;
        self.fourSelected = NO;
        self.fiveSelected = NO;
        self.sixSelected = NO;
        self.sevenSelected = NO;
        self.eightSelected = NO;
        self.nineSelected = NO;
        self.tenSelected = YES;
        
        [self.dog_one runAction:removeNode];
        [self.dog_two runAction:removeNode];
        [self.dog_three runAction:removeNode];
        [self.dog_four runAction:removeNode];
        [self.dog_five runAction:removeNode];
        [self.dog_six runAction:removeNode];
        [self.dog_seven runAction:removeNode];
        [self.dog_eight runAction:removeNode];
        [self.dog_nine runAction:removeNode];
        [self.dog_ten runAction:removeNode];
        [self.dog runAction:removeNode];
        
        self.dogCompleted = YES;
        
        //Removes sprites the user has drawn.
        for(NSUInteger i = 0; i < self.drawnSprites.count; i++){
            SKSpriteNode *node = [self.drawnSprites objectAtIndex:i];
            [node runAction:removeNode];
        }
        
        //Displays completed picture.
        [self addChild: self.completedDog];
        
        //Delays the playback for applaudAudioPlayer to make sure that tenAudioPlayer has finished playing.
        int secondsOfTen = self.tenAudioPlayer.duration;
        sleep(secondsOfTen * 2);
        
        //Plays applause.
        [self.applaudAudioPlayer play];
        
        self.selectPictureButton.text = @"Connect a New Picture!";
        self.dogSelected = NO;
        
        self.message.text = @"Congratulations! You've Connected All the Dots!";
        
    }
    //User tapped the flower one node button.
    else if ((node.position.x - 5) <= self.flower_one.position.x && (node.position.x + 5) >= self.flower_one.position.x && (node.position.y - 5) <= self.flower_one.position.y && (node.position.y + 5) >= self.flower_one.position.y) {
        //Plays the one sound.
        [self.oneAudioPlayer play];
        [super reloadInputViews];
        
        self.oneSelected = YES;
        self.twoSelected = NO;
        self.threeSelected = NO;
        self.fourSelected = NO;
        self.fiveSelected = NO;
        self.sixSelected = NO;
        self.sevenSelected = NO;
        self.eightSelected = NO;
        self.nineSelected = NO;
        self.tenSelected = NO;
        
    }
    //User tapped the flower two node button.
    else if((node.position.x - 5) <= self.flower_two.position.x && (node.position.x + 5) >= self.flower_two.position.x && (node.position.y - 5) <= self.flower_two.position.y && (node.position.y + 5) >= self.flower_two.position.y && self.oneSelected == YES){
        //Plays the two sound.
        [self.twoAudioPlayer play];
        [super reloadInputViews];
        
        self.oneSelected = NO;
        self.twoSelected = YES;
        self.threeSelected = NO;
        self.fourSelected = NO;
        self.fiveSelected = NO;
        self.sixSelected = NO;
        self.sevenSelected = NO;
        self.eightSelected = NO;
        self.nineSelected = NO;
        self.tenSelected = NO;
    }
    //User tapped the flower three button.
    else if((node.position.x - 5) <= self.flower_three.position.x && (node.position.x + 5) >= self.flower_three.position.x && (node.position.y - 5) <= self.flower_three.position.y && (node.position.y + 5) >= self.flower_three.position.y && self.twoSelected == YES){
        //Plays the three sound.
        [self.threeAudioPlayer play];
        [super reloadInputViews];
        
        self.oneSelected = NO;
        self.twoSelected = NO;
        self.threeSelected = YES;
        self.fourSelected = NO;
        self.fiveSelected = NO;
        self.sixSelected = NO;
        self.sevenSelected = NO;
        self.eightSelected = NO;
        self.nineSelected = NO;
        self.tenSelected = NO;
        
    }
    //User tapped the flower four node button.
    else if ((node.position.x - 5) <= self.flower_four.position.x && (node.position.x + 5) >= self.flower_four.position.x && (node.position.y - 5) <= self.flower_four.position.y && (node.position.y + 5) >= self.flower_four.position.y && self.threeSelected == YES) {
        //Plays the four sound.
        [self.fourAudioPlayer play];
        [super reloadInputViews];
        
        self.oneSelected = NO;
        self.twoSelected = NO;
        self.threeSelected = NO;
        self.fourSelected = YES;
        self.fiveSelected = NO;
        self.sixSelected = NO;
        self.sevenSelected = NO;
        self.eightSelected = NO;
        self.nineSelected = NO;
        self.tenSelected = NO;
        
        
    }
    //User tapped the flower five node button.
    else if ((node.position.x - 5) <= self.flower_five.position.x && (node.position.x + 5) >= self.flower_five.position.x && (node.position.y - 5) <= self.flower_five.position.y && (node.position.y + 5) >= self.flower_five.position.y && self.fourSelected == YES) {
        //Plays the five sound.
        [self.fiveAudioPlayer play];
        [super reloadInputViews];
        
        self.oneSelected = NO;
        self.twoSelected = NO;
        self.threeSelected = NO;
        self.fourSelected = NO;
        self.fiveSelected = YES;
        self.sixSelected = NO;
        self.sevenSelected = NO;
        self.eightSelected = NO;
        self.nineSelected = NO;
        self.tenSelected = NO;
        
        
    }
    //User tapped the flower six node button.
    else if((node.position.x - 5) <= self.flower_six.position.x && (node.position.x + 5) >= self.flower_six.position.x && (node.position.y - 5) <= self.flower_six.position.y && (node.position.y + 5) >= self.flower_six.position.y && self.fiveSelected == YES){
        //Plays the six sound.
        [self.sixAudioPlayer play];
        [super reloadInputViews];
        
        self.oneSelected = NO;
        self.twoSelected = NO;
        self.threeSelected = NO;
        self.fourSelected = NO;
        self.fiveSelected = NO;
        self.sixSelected = YES;
        self.sevenSelected = NO;
        self.eightSelected = NO;
        self.nineSelected = NO;
        self.tenSelected = NO;
        
    }
    //User tapped the flower seven button.
    else if((node.position.x - 5) <= self.flower_seven.position.x && (node.position.x + 5) >= self.flower_seven.position.x && (node.position.y - 5) <= self.flower_seven.position.y && (node.position.y + 5) >= self.flower_seven.position.y && self.sixSelected == YES){
        //Plays the seven sound.
        [self.sevenAudioPlayer play];
        [super reloadInputViews];
        
        self.oneSelected = NO;
        self.twoSelected = NO;
        self.threeSelected = NO;
        self.fourSelected = NO;
        self.fiveSelected = NO;
        self.sixSelected = NO;
        self.sevenSelected = YES;
        self.eightSelected = NO;
        self.nineSelected = NO;
        self.tenSelected = NO;
        
    }
    //User tapped the flower eight node button.
    else if ((node.position.x - 5) <= self.flower_eight.position.x && (node.position.x + 5) >= self.flower_eight.position.x && (node.position.y - 5) <= self.flower_eight.position.y && (node.position.y + 5) >= self.flower_eight.position.y && self.sevenSelected == YES) {
        //Plays the eight sound.
        [self.eightAudioPlayer play];
        [super reloadInputViews];
        
        self.oneSelected = NO;
        self.twoSelected = NO;
        self.threeSelected = NO;
        self.fourSelected = NO;
        self.fiveSelected = NO;
        self.sixSelected = NO;
        self.sevenSelected = NO;
        self.eightSelected = YES;
        self.nineSelected = NO;
        self.tenSelected = NO;
        
        
    }
    //User tapped the flower nine button.
    else if((node.position.x - 5) <= self.flower_nine.position.x && (node.position.x + 5) >= self.flower_nine.position.x && (node.position.y - 5) <= self.flower_nine.position.y && (node.position.y + 5) >= self.flower_nine.position.y && self.eightSelected == YES){
        //Plays the nine sound.
        [self.nineAudioPlayer play];
        [super reloadInputViews];
        
        self.oneSelected = NO;
        self.twoSelected = NO;
        self.threeSelected = NO;
        self.fourSelected = NO;
        self.fiveSelected = NO;
        self.sixSelected = NO;
        self.sevenSelected = NO;
        self.eightSelected = NO;
        self.nineSelected = YES;
        self.tenSelected = NO;
        
    }
    //User tapped the flower ten node button; completed the flower.
    else if ((node.position.x - 5) <= self.flower_ten.position.x && (node.position.x + 5) >= self.flower_ten.position.x && (node.position.y - 5) <= self.flower_ten.position.y && (node.position.y + 5) >= self.flower_ten.position.y && self.nineSelected == YES) {
        //Plays the ten sound.
        [self.tenAudioPlayer play];
        [super reloadInputViews];
        
        self.oneSelected = NO;
        self.twoSelected = NO;
        self.threeSelected = NO;
        self.fourSelected = NO;
        self.fiveSelected = NO;
        self.sixSelected = NO;
        self.sevenSelected = NO;
        self.eightSelected = NO;
        self.nineSelected = NO;
        self.tenSelected = YES;
        
        self.message.text = @"Congratulations! You've Connected All the Dots!";
        
        [self.flower_one runAction:removeNode];
        [self.flower_two runAction:removeNode];
        [self.flower_three runAction:removeNode];
        [self.flower_four runAction:removeNode];
        [self.flower_five runAction:removeNode];
        [self.flower_six runAction:removeNode];
        [self.flower_seven runAction:removeNode];
        [self.flower_eight runAction:removeNode];
        [self.flower_nine runAction:removeNode];
        [self.flower_ten runAction:removeNode];
        [self.flower runAction:removeNode];
        
        self.flowerCompleted = YES;
        
        //Removes all sprites the user has drawn.
        for(NSUInteger i = 0; i < self.drawnSprites.count; i++){
            SKSpriteNode *node = [self.drawnSprites objectAtIndex:i];
            [node runAction:removeNode];
        }
        
        //Display finished flower picture.
        [self addChild: self.completedFlower];
        
        //Delays the playback for applaudAudioPlayer to make sure that tenAudioPlayer has finished playing.
        int secondsOfTen = self.tenAudioPlayer.duration;
        sleep(secondsOfTen * 2);
        
        //Applauds the user.
        [self.applaudAudioPlayer play];
        
        self.selectPictureButton.text = @"Connect a New Picture!";
        self.flowerSelected = NO;
        
    }
    //The user is drawing.
    else if(self.dogSelected == YES || self.flowerSelected == YES){
        //Creates a node that represents the user's touch.
        SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithColor:color size:CGSizeMake(8, 8)];
        sprite.position = location;
        [self addChild:sprite];
        
        [self.drawnSprites insertObject:sprite atIndex:self.drawnSprites.count];
    }

    
}


@end
