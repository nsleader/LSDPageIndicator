//
//  LSDPageIndicator.m
//
//  Created by IVAN CHIRKOV on 30.01.15.
//  Copyright (c) 2015 IVAN CHIRKOV. All rights reserved.
//

#import "LSDPageIndicator.h"

static const CGFloat kDefaultDotDiameter		= 5.f;
static const CGFloat kDefaultDotSpace			= 7.f;
static const CGFloat kDefaultSelectedDotAlpha	= 1.f;
static const CGFloat kDefaultDotAlpha			= 0.5f;

@implementation LSDPageIndicator

- (void)drawRect:(CGRect)rect
{
	CGFloat xOffset = [self startXOffset];
	
	for (NSInteger idx = 0; idx < self.numberOfDots; idx++) {
		UIBezierPath *dot = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(xOffset, 0, self.dotDiameter, self.dotDiameter)];
		
		if (self.indexOfSelectedDot == idx) {
			[self.colorOfSelectedDot setFill];
		} else {
			[self.colorOfDot setFill];
		}
		[dot fill];
		xOffset += (self.dotDiameter + self.dotSpace);
	}
}

- (CGFloat)startXOffset
{
	CGFloat width = CGRectGetWidth([self frame]);
	
	switch (self.alignment) {
		case LSDPageIndicatorAlignmentCenter:
			return width / 2.f - (self.numberOfDots * (self.dotDiameter + self.dotSpace) - self.dotSpace) / 2.f;
			
		case LSDPageIndicatorAlignmentLeft:
			return 0;
			
		case LSDPageIndicatorAlignmentRight:
			return width - (self.numberOfDots * (self.dotDiameter + self.dotSpace) - self.dotSpace);
	}
}

#pragma mark - Accessors

- (void)setNumberOfDots:(NSUInteger)numberOfDots
{
	_numberOfDots = numberOfDots;
	[self setNeedsDisplay];
}

- (void)setIndexOfSelectedDot:(NSUInteger)indexOfSelectedDot
{
	_indexOfSelectedDot = indexOfSelectedDot;
	[self setNeedsDisplay];
}

- (void)setAlignment:(LSDPageIndicatorAlignment)alignment
{
	_alignment = alignment;
	[self setNeedsDisplay];
}

- (UIColor *)colorOfDot
{
	if (!_colorOfDot) {
		_colorOfDot = [[UIColor whiteColor] colorWithAlphaComponent:kDefaultDotAlpha];
	}
	return _colorOfDot;
}

- (UIColor *)colorOfSelectedDot
{
	if (!_colorOfSelectedDot) {
		_colorOfSelectedDot = [[UIColor whiteColor] colorWithAlphaComponent:kDefaultSelectedDotAlpha];
	}
	return _colorOfSelectedDot;
}

- (CGFloat)dotDiameter
{
	if (!_dotDiameter) {
		_dotDiameter = kDefaultDotDiameter;
	}
	return _dotDiameter;
}

- (CGFloat)dotSpace
{
	if (!_dotSpace) {
		_dotSpace = kDefaultDotSpace;
	}
	return _dotSpace;
}

@end
