//
//  ColoringScene.m
//  ToddlerLearningGames
//
//  Created by Karen Page Hanes on 12/11/13.
//  Copyright (c) 2013 Karen Page Hanes. All rights reserved.
//

#import "ColoringScene.h"

@interface ColoringScene ()

@property BOOL contentCreated;
@property BOOL yellowSelected;
@property BOOL redSelected;
@property BOOL blueSelected;
@property BOOL greenSelected;
@property BOOL brownSelected;
@property BOOL eraserSelected;
@property BOOL flowersSelected;
@property BOOL turkeySelected;

//Sprites that the user has drawn on the screen.
@property (strong, nonatomic) NSMutableArray *drawnSprites;

@end

@implementation ColoringScene

- (void)didMoveToView: (SKView *) view
{
    if (!self.contentCreated)
    {
        [self createSceneContents];
        self.contentCreated = YES;
    }
    // Obtain the URL path to the sound file blue.wav.
    NSURL *blueSoundFileURL = [[NSBundle mainBundle] URLForResource: @"blue" withExtension: @"wav"];
    
    // Instantiate an audio player object and initialize it with the blue.wav audio file.
    // Store newly created audio player's object reference into the instance variable _blueAudioPlayer
    self.blueAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:blueSoundFileURL error:nil];
    
    // Obtain the URL path to the sound file red.wav.
    NSURL *redSoundFileURL = [[NSBundle mainBundle] URLForResource: @"red" withExtension: @"wav"];
    
    // Instantiate an audio player object and initialize it with the red.wav audio file.
    // Store newly created audio player's object reference into the instance variable _redAudioPlayer
    self.redAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:redSoundFileURL error:nil];
    
    // Obtain the URL path to the sound file yellow.wav.
    NSURL *yellowSoundFileURL = [[NSBundle mainBundle] URLForResource: @"yellow" withExtension: @"wav"];
    
    // Instantiate an audio player object and initialize it with the yellow.wav audio file.
    // Store newly created audio player's object reference into the instance variable _yellowAudioPlayer
    self.yellowAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:yellowSoundFileURL error:nil];
    
    // Obtain the URL path to the sound file green.wav.
    NSURL *greenSoundFileURL = [[NSBundle mainBundle] URLForResource: @"green" withExtension: @"wav"];
    
    // Instantiate an audio player object and initialize it with the green.wav audio file.
    // Store newly created audio player's object reference into the instance variable _greenAudioPlayer
    self.greenAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:greenSoundFileURL error:nil];
    
    // Obtain the URL path to the sound file brown.wav.
    NSURL *brownSoundFileURL = [[NSBundle mainBundle] URLForResource: @"brown" withExtension: @"wav"];
    
    // Instantiate an audio player object and initialize it with the brown.wav audio file.
    // Store newly created audio player's object reference into the instance variable _brownAudioPlayer
    self.brownAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:brownSoundFileURL error:nil];
    
    self.drawnSprites = [[NSMutableArray alloc] init];
}

- (void)createSceneContents
{
    self.backgroundColor = [SKColor whiteColor];
    self.scaleMode = SKSceneScaleModeAspectFit;
    
    //Initializes the nodes as variables.
    self.red = [self redNode];
    self.blue = [self blueNode];
    self.yellow = [self yellowNode];
    self.brown = [self brownNode];
    self.green = [self greenNode];
    self.eraser = [self eraserNode];
    self.turkey = [self turkeyNode];
    self.flowers = [self flowersNode];
    self.turkeyButton = [self turkeyButtonNode];
    self.flowersButton = [self flowersButtonNode];
    self.selectPictureButton = [self newPictureNode];
    
    //No colors are coloring pages are initially selected.
    self.yellowSelected = NO;
    self.redSelected = NO;
    self.blueSelected = NO;
    self.greenSelected = NO;
    self.brownSelected = NO;
    self.eraserSelected = NO;
    self.turkeySelected = NO;
    self.flowersSelected = NO;
    
    //Add the turkey and flower buttons.
    [self addChild: self.turkeyButton];
    [self addChild: self.flowersButton];
    
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

/* Creates a flowers node button. */
- (SKSpriteNode *)flowersButtonNode
{
    SKSpriteNode *flowersButtonSprite = [SKSpriteNode spriteNodeWithImageNamed:@"bee.png"];
    flowersButtonSprite.position = CGPointMake(250, 350);
    [flowersButtonSprite setScale: .35];
    flowersButtonSprite.name = @"flowersButtonSprite";
    return flowersButtonSprite;
}

/* Creates a turkey node button. */
- (SKSpriteNode *)turkeyButtonNode
{
    SKSpriteNode *turkeyButtonSprite = [SKSpriteNode spriteNodeWithImageNamed:@"turkey.png"];
    turkeyButtonSprite.position = CGPointMake(750, 350);
    [turkeyButtonSprite setScale: .65];
    turkeyButtonSprite.name = @"turkeyButtonSprite";
    return turkeyButtonSprite;
}


/* Creates a flowers node. */
- (SKSpriteNode *)flowersNode
{
    SKSpriteNode *flowersSprite = [SKSpriteNode spriteNodeWithImageNamed:@"bee.png"];
    flowersSprite.position = CGPointMake(600, 350);
    [flowersSprite setScale: .35];
    flowersSprite.name = @"flowersSprite";
    return flowersSprite;
}

/* Creates a turkey node. */
- (SKSpriteNode *)turkeyNode
{
    SKSpriteNode *turkeySprite = [SKSpriteNode spriteNodeWithImageNamed:@"turkey.png"];
    turkeySprite.position = CGPointMake(600, 350);
    [turkeySprite setScale: .75];
    turkeySprite.name = @"turkeySprite";
    return turkeySprite;
}

/* Creates a eraser node button. */
- (SKSpriteNode *)eraserNode
{
    SKSpriteNode *eraserSprite = [SKSpriteNode spriteNodeWithImageNamed:@"eraser.png"];
    eraserSprite.position = CGPointMake(150, 600);
    eraserSprite.name = @"eraserSprite";
    [eraserSprite setScale: .3];
    return eraserSprite;
    
}

/* Creates a red node button. */
- (SKSpriteNode *)redNode
{
    SKSpriteNode *redSprite = [SKSpriteNode spriteNodeWithColor:[UIColor redColor] size:CGSizeMake(85, 85)];
    redSprite.position = CGPointMake(150, 500);
    redSprite.name = @"redSprite";
    return redSprite;
    
}

/* Creates a blue node button. */
- (SKSpriteNode *)blueNode
{
    SKSpriteNode *blueSprite = [SKSpriteNode spriteNodeWithColor:[UIColor blueColor] size:CGSizeMake(85, 85)];
    blueSprite.position = CGPointMake(150, 400);
    blueSprite.name = @"blueSprite";
    return blueSprite;
}

/* Creates a yellow node button. */
- (SKSpriteNode *)yellowNode
{
    SKSpriteNode *yellowSprite = [SKSpriteNode spriteNodeWithColor:[UIColor yellowColor] size:CGSizeMake(85, 85)];
    yellowSprite.position = CGPointMake(150, 300);
    yellowSprite.name = @"yellowSprite";
    return yellowSprite;
}

/* Creates a green node button. */
- (SKSpriteNode *)greenNode
{
    SKSpriteNode *greenSprite = [SKSpriteNode spriteNodeWithColor:[UIColor greenColor] size:CGSizeMake(85, 85)];
    greenSprite.position = CGPointMake(150, 200);
    greenSprite.name = @"greenSprite";
    return greenSprite;
    
}

/* Creates a brown node button. */
- (SKSpriteNode *)brownNode
{
    SKSpriteNode *brownSprite = [SKSpriteNode spriteNodeWithColor:[UIColor brownColor] size:CGSizeMake(85, 85)];
    brownSprite.position = CGPointMake(150, 100);
    brownSprite.name = @"brownSprite";
    return brownSprite;
    
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
        self.message.text = @"Select a Picture to Color!";
        [super reloadInputViews];
        
        [self.eraser runAction:removeNode];
        [self.red runAction:removeNode];
        [self.blue runAction:removeNode];
        [self.yellow runAction:removeNode];
        [self.green runAction:removeNode];
        [self.brown runAction:removeNode];
        [self.selectPictureButton runAction:removeNode];
        
        if(self.flowersSelected == YES){
            [self.flowers runAction:removeNode];
        }
        if(self.turkeySelected == YES){
            [self.turkey runAction:removeNode];
        }
        
        //Removes all the nodes the user has drawn on the screen.
        for(NSUInteger i = 0; i < self.drawnSprites.count; i++){
            SKSpriteNode *node = [self.drawnSprites objectAtIndex:i];
            [node runAction:removeNode];
        }
        
        [self addChild: self.turkeyButton];
        [self addChild: self.flowersButton];
        
        self.yellowSelected = NO;
        self.redSelected = NO;
        self.blueSelected = NO;
        self.greenSelected = NO;
        self.brownSelected = NO;
        self.eraserSelected = NO;
        self.turkeySelected = NO;
        self.flowersSelected = NO;

        
    }
    //User tapped the flower node button.
    else if ([node.name isEqualToString:@"flowersButtonSprite"]) {
        self.message.textColor = [UIColor blueColor];
        self.message.text = @"Color the Flowers and the Bee!";
        [super reloadInputViews];
        
        [self.flowersButton runAction:removeNode];
        [self.turkeyButton runAction:removeNode];
        
        [self addChild: self.red];
        [self addChild: self.blue];
        [self addChild: self.yellow];
        [self addChild: self.green];
        [self addChild: self.brown];
        [self addChild: self.eraser];
        [self addChild: self.flowers];
        [self addChild: self.selectPictureButton];
        
        self.flowersSelected = YES;
        
        
    }
    //User tapped the turkey node button.
    else if([node.name isEqualToString:@"turkeyButtonSprite"]){
        self.message.textColor = [UIColor blueColor];
        self.message.text = @"Color the Turkey!";
        [super reloadInputViews];
        
        [self.flowersButton runAction:removeNode];
        [self.turkeyButton runAction:removeNode];
        
        [self addChild: self.red];
        [self addChild: self.blue];
        [self addChild: self.yellow];
        [self addChild: self.green];
        [self addChild: self.brown];
        [self addChild: self.eraser];
        [self addChild: self.turkey];
        [self addChild: self.selectPictureButton];
        
        self.turkeySelected = YES;
        
    }
    //User tapped the red node button.
    else if ([node.name isEqualToString:@"redSprite"]) {
        //Plays the red sound.
        [self.redAudioPlayer play];
        self.message.textColor = [UIColor redColor];
        self.message.text = @"Draw with Red!";
        [super reloadInputViews];
        
        self.redSelected = YES;
        self.yellowSelected = NO;
        self.blueSelected = NO;
        self.greenSelected = NO;
        self.brownSelected = NO;
        self.eraserSelected = NO;
        
    }
    //User tapped the blue node button.
    else if([node.name isEqualToString:@"blueSprite"]){
        //Plays the blue sound.
        [self.blueAudioPlayer play];
        self.message.textColor = [UIColor blueColor];
        self.message.text = @"Draw with Blue!";
        [super reloadInputViews];
        
        self.redSelected = NO;
        self.yellowSelected = NO;
        self.blueSelected = YES;
        self.greenSelected = NO;
        self.brownSelected = NO;
        self.eraserSelected = NO;
    }
    //User tapped the yellow button.
    else if([node.name isEqualToString:@"yellowSprite"]){
        //Plays the yellow sound.
        [self.yellowAudioPlayer play];
        self.message.textColor = [UIColor yellowColor];
        self.message.text = @"Draw with YELLOW!";
        [super reloadInputViews];
        
        self.redSelected = NO;
        self.yellowSelected = YES;
        self.blueSelected = NO;
        self.greenSelected = NO;
        self.brownSelected = NO;
        self.eraserSelected = NO;
    }
    //User tapped the green node button.
    else if ([node.name isEqualToString:@"greenSprite"]) {
        //Plays the green sound.
        [self.greenAudioPlayer play];
        self.message.textColor = [UIColor greenColor];
        self.message.text = @"Draw with Green!";
        [super reloadInputViews];
        
        self.redSelected = NO;
        self.yellowSelected = NO;
        self.blueSelected = NO;
        self.greenSelected = YES;
        self.brownSelected = NO;
        self.eraserSelected = NO;
        
    }
    //User tapped the brown node button.
    else if([node.name isEqualToString:@"brownSprite"]){
        //Plays the brown sound.
        [self.brownAudioPlayer play];
        self.message.textColor = [UIColor brownColor];
        self.message.text = @"Draw with Brown!";
        [super reloadInputViews];
        
        self.redSelected = NO;
        self.yellowSelected = NO;
        self.blueSelected = NO;
        self.greenSelected = NO;
        self.brownSelected = YES;
        self.eraserSelected = NO;
    }
    //User tapped the eraser button.
    else if([node.name isEqualToString:@"eraserSprite"]){
        self.message.textColor = [UIColor blackColor];
        self.message.text = @"Erase with the Eraser!";
        [super reloadInputViews];
        
        self.redSelected = NO;
        self.yellowSelected = NO;
        self.blueSelected = NO;
        self.greenSelected = NO;
        self.brownSelected = NO;
        self.eraserSelected = YES;
    }
}

/* Handles events when the user drags.*/
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    
    //Gets the node's coordinates.
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInNode:self];
    
    UIColor *color = [UIColor blackColor];
    
    if(self.redSelected == YES){
        color = [UIColor redColor];
    }
    if(self.blueSelected == YES){
        color = [UIColor blueColor];
    }
    if(self.yellowSelected == YES){
        color = [UIColor yellowColor];
    }
    if(self.greenSelected == YES){
        color = [UIColor greenColor];
    }
    if(self.brownSelected == YES){
        color = [UIColor brownColor];
    }
    if(self.eraserSelected == YES){
        color = [UIColor whiteColor];
    }
    
    if((self.redSelected == YES || self.blueSelected == YES || self.yellowSelected == YES || self.greenSelected == YES || self.brownSelected == YES || self.eraserSelected == YES) && (self.turkeySelected == YES || self.flowersSelected == YES)){
        
        //Creates a node that represents the user's touch.
        SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithColor:color size:CGSizeMake(8, 8)];
        sprite.position = location;
        [self addChild:sprite];
        
        [self.drawnSprites insertObject:sprite atIndex:self.drawnSprites.count];
    }
    //User hasn't selected a color yet or coloring page and is trying to draw.
    else if(self.redSelected == NO && self.blueSelected == NO && self.yellowSelected == NO && self.greenSelected == NO && self.brownSelected == NO && self.eraserSelected == NO && (self.turkeySelected == YES || self.flowersSelected == YES)){

        //Alerts the user no color is selected.
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"No Color Selected!"
                                                        message:@"Please select a color."
                                                       delegate:self
                                              cancelButtonTitle:@"Okay"
                                              otherButtonTitles:nil];
        //Displays the alert.
        [alert show];
    }
    
}


@end
