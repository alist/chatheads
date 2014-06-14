//
//  CHDraggableView+Avatar.m
//  ChatHeads
//
//  Created by Matthias Hochgatterer on 4/19/13.
//  Copyright (c) 2013 Matthias Hochgatterer. All rights reserved.
//

#import "CHDraggableView+Avatar.h"

#import "CHAvatarView.h"

@implementation CHDraggableView (Avatar)

+ (id)draggableViewWithImage:(UIImage *)image {
    return [self draggableViewWithImage:image size:CGSizeMake(66, 66)];
}


+ (id)draggableViewWithImage:(UIImage *)image size:(CGSize)size
{
    CHDraggableView *view = [[CHDraggableView alloc] initWithFrame:CGRectMake(0, 0, size.width, size.height)];
    [view setAutoresizesSubviews:TRUE];
    
    CHAvatarView *avatarView = [[CHAvatarView alloc] initWithFrame:CGRectInset(view.bounds, 4, 4)];
    [avatarView setAutoresizingMask:UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth];
    avatarView.backgroundColor = [UIColor clearColor];
    [avatarView setImage:image];
    avatarView.center = CGPointMake(CGRectGetMidX(view.bounds), CGRectGetMidY(view.bounds));
    [view addSubview:avatarView];
    
    return view;
}


@end
