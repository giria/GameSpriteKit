//
//  GameScene.h
//  GameSpritekit
//

//  Copyright (c) 2015 com.giria. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface GameScene : SKScene  <UIGestureRecognizerDelegate>  {
    
    UISwipeGestureRecognizer* swipeRightGesture;
    UISwipeGestureRecognizer* swipeLeftGesture;
    
    UIRotationGestureRecognizer* rotationGR;
}


@end
