//
//  ViewController.m
//  LSDPageIndicatorExample
//
//  Created by IVAN CHIRKOV on 30.01.15.
//  Copyright (c) 2015 IVAN CHIRKOV. All rights reserved.
//

#import "ViewController.h"
#import "LSDPageIndicator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	self.pageIndocator.alignment = LSDPageIndicatorAlignmentCenter;
	self.pageIndocator.numberOfDots = 4;
	self.pageIndocator.indexOfSelectedDot = 0;
	self.pageIndocator.dotSpace = 4.f;
	self.pageIndocator.dotDiameter = 5.f;];
}

@end
