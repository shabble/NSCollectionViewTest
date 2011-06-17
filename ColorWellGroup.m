//
//  ColorWellGroup.m
//  NSCollectionViewTest
//
//  Created by shabble on 17/06/2011.
//  Copyright 2011 . All rights reserved.
//

#import "ColorWellGroup.h"

@implementation ColorWellGroup

@synthesize collection=collection_;

- (id)initWithFrame:(NSRect)frameRect
{
    if (self = [super initWithFrame:frameRect]) {
        NSLog(@"initialising colorwellgroup");
        [NSBundle loadNibNamed:@"ColorWellGroup" owner:self];        
    }
	return self;
}

- (void) awakeFromNib {
	
    NSLog(@"CWG awakefromnib");
	self.collection = [[NSMutableArray alloc] init];
	NSSize size = NSMakeSize(200, 50);
	[collectionView setMinItemSize:size];
	[collectionView setMaxItemSize:size];
    
    [collectionView setMaxNumberOfRows:8];
    [collectionView setMaxNumberOfColumns:2];
    
    CGFloat colorCoefficient = 1.0 / 16;
    for (int i = 0; i < 16; i++) {
        CGFloat r, g, b;
        r = g = b = (i+1) * colorCoefficient;
        
        NSColor *color = [NSColor colorWithDeviceRed:r green:g blue:b alpha:1.0];
        NSString *label = [NSString stringWithFormat:@"Color %d", i + 1];
        [arrayController insertObject:
            [NSDictionary dictionaryWithObjectsAndKeys:
                color, @"Color", label, @"Label", nil] atArrangedObjectIndex:i];
        
    }
}

@end
