//
//  ColorWellGroup.h
//  NSCollectionViewTest
//
//  Created by shabble on 17/06/2011.
//  Copyright 2011 . All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface ColorWellGroup : NSView {
    
    IBOutlet NSCollectionView *collectionView;
	IBOutlet NSArrayController *arrayController;
	
	NSMutableArray *collection_;
}

@property (nonatomic,readwrite,copy) NSArray *collection;


- (id)initWithFrame:(NSRect)frameRect;
- (void)awakeFromNib;


@end
