//
//  Right.m
//  GameSpritekit
//
//  Created by Joan Barrull Ribalta on 24/03/15.
//  Copyright (c) 2015 com.giria. All rights reserved.
//

#import "Right.h"
#import "GameScene.h"

@implementation Right


-(void)didMoveToView:(SKView *)view {
    /* Setup your scene here */
    SKLabelNode *myLabel = [SKLabelNode labelNodeWithFontNamed:@"Right"];
    
    myLabel.text = @"This is the right Scene!";
    myLabel.fontSize = 65;
    myLabel.position = CGPointMake(CGRectGetMidX(self.frame),
                                   CGRectGetMidY(self.frame));
    
    [self addChild:myLabel];
}






-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    
    
    GameScene *sampleScene = [[GameScene alloc] initWithSize:self.size];
    SKTransition *transition = [SKTransition flipVerticalWithDuration:0.5];
    [self.view presentScene:sampleScene transition:transition];
    
    
    
}

@end
