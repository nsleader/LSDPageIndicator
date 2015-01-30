//
//  LSDPageIndicator.h
//
//  Created by IVAN CHIRKOV on 30.01.15.
//  Copyright (c) 2015 IVAN CHIRKOV. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, LSDPageIndicatorAlignment) {
	LSDPageIndicatorAlignmentCenter,
	LSDPageIndicatorAlignmentLeft,
	LSDPageIndicatorAlignmentRight
};

@interface LSDPageIndicator : UIView

/**
 *  The number of dots.
 */
@property (nonatomic) NSUInteger numberOfDots;

/**
 *  The index of selected dot.
 */
@property (nonatomic) NSUInteger indexOfSelectedDot;

/**
 *  Default 5.
 */
@property (nonatomic) CGFloat dotDiameter;

/**
 *  Default 7.
 */
@property (nonatomic) CGFloat dotSpace;

/**
 *  The color of selected dot. Default of white color with 0.5 alpha.
 */
@property (nonatomic) UIColor *colorOfSelectedDot;

/**
 *  The color of selected dot. Default of white color.
 */
@property (nonatomic) UIColor *colorOfDot;

/**
 *  Alignment dots. Default LSDPageIndicatorAlignmentCenter.
 */
@property (nonatomic) LSDPageIndicatorAlignment alignment;

@end
