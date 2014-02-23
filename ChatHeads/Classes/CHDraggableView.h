//
//  CHDraggableView.h
//  ChatHeads
//
//  Created by Matthias Hochgatterer on 4/19/13.
//  Copyright (c) 2013 Matthias Hochgatterer. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CHDraggableViewDelegate;
@interface CHDraggableView : UIView

@property (nonatomic, assign) id<CHDraggableViewDelegate> delegate;

- (void)snapViewCenterToPoint:(CGPoint)point edge:(CGRectEdge)edge;

@end

@protocol CHDraggableViewDelegate <NSObject>

@optional
- (void)draggableViewHold:(CHDraggableView *)view;
- (void)draggableView:(CHDraggableView *)view didMoveToPoint:(CGPoint)point;

//SUPER optional -- if this is defined, CHDraggableView will NOT drag itself about
- (void)handleTouchMove:(UITouch*)touch forDraggableView:(CHDraggableView *)view;

- (void)draggableViewReleased:(CHDraggableView *)view;

- (void)draggableViewTouched:(CHDraggableView *)view;

- (void)draggableViewNeedsAlignment:(CHDraggableView *)view;

@end