//
//  GameScene.m
//  GameSpritekit
//
//  Created by Joan Barrull Ribalta on 24/03/15.
//  Copyright (c) 2015 com.giria. All rights reserved.
//

#import "GameScene.h"
#import "Right.h"
#import "Left.h"

@implementation GameScene


-(void)didMoveToView:(SKView *)view {
    /* Setup your scene here */
    
    swipeRightGesture = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handleSwipeRight:)] ;
    
    [swipeRightGesture setDirection: UISwipeGestureRecognizerDirectionRight];
    
    [view addGestureRecognizer: swipeRightGesture ];
    swipeLeftGesture= [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handleSwipeLeft:)] ;
    [swipeLeftGesture setDirection: UISwipeGestureRecognizerDirectionLeft];
    
    [view addGestureRecognizer: swipeLeftGesture ];
    
    
    
    
    
    SKLabelNode *myLabel = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
    
    myLabel.text = @" Center Scene!";
    myLabel.fontSize = 65;
    myLabel.position = CGPointMake(CGRectGetMidX(self.frame),
                                   CGRectGetMidY(self.frame));
    self.backgroundColor = [UIColor redColor];
    
    [self addChild:myLabel];
}

- ( void ) willMoveFromView: (SKView *) view {
    
    NSLog(@"Scene moved from view");
    
    [view removeGestureRecognizer: swipeRightGesture ];
    [view removeGestureRecognizer: swipeLeftGesture ];
  
    
}

-(void) handleSwipeRight:( UISwipeGestureRecognizer *) recognizer {
    
         //sleep(3);
        // do something if the swipe right had exactly 2 fingers involved
        SKScene *sampleScene = [[Right alloc] initWithSize:self.size];
        SKTransition *transition = [SKTransition flipVerticalWithDuration:2.0];
        [self.view presentScene:sampleScene transition:transition];
   
    
    
}
-(void) handleSwipeLeft:( UISwipeGestureRecognizer *) recognizer {
    
    
    // do something if the swipe right had exactly 2 fingers involved
    SKScene *sampleScene = [[Left alloc] initWithSize:self.size];
    SKTransition *transition = [SKTransition flipVerticalWithDuration:2.0];
    [self.view presentScene:sampleScene transition:transition];
    
    
}




//-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
//    /* Called when a touch begins */
//    
//    
//    SKScene *sampleScene = [[Right alloc] initWithSize:self.size];
//    SKTransition *transition = [SKTransition flipVerticalWithDuration:0.5];
//    [self.view presentScene:sampleScene transition:transition];
//
//}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
