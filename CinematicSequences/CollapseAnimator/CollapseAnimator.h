//
//  CollapseAnimator.h
//  CinematicSequences
//
//  Created by pipixia on 16/10/9.
//  Copyright © 2016年 pipixia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CollapseAnimator : NSObject<UIViewControllerAnimatedTransitioning>

/**
 *  转场持续时间
 */
@property (nonatomic, assign) NSTimeInterval duration;

/**
 *  碎片大小
 */
@property (nonatomic, assign) NSInteger sideLength;


@end
