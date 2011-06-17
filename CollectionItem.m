#import "CollectionItem.h"

@implementation CollectionItem

/*- (IBAction)updateGender:(id)sender {
	NSString *newName;
    switch ([gender	selectedSegment]) {
		case 0:
			newName = [Person getRandomMaleName];
			break;
		default:
			newName = [Person getRandomFemaleName];
			break;
	}
	
	[name setStringValue:newName];
}
*/

-(id)copyWithZone:(NSZone *)zone
{
	id result = [super copyWithZone:zone];
	[NSBundle loadNibNamed:@"collectionItem" owner:result];
	return result;
}

- (void)setRepresentedObject:(id)object {

	[super setRepresentedObject:object];
	
	if (object == nil) {
		return;
	}
    
	NSDictionary *dataDict	= (NSDictionary*) [self representedObject];	
    if (dataDict != nil) {
        NSString    *labelText	= (NSString*)[dataDict valueForKey:@"Label"];
        NSColor     *colorValue	= (NSColor*) [dataDict valueForKey:@"Color"];
        NSLog(@"label is: %@", labelText);
        [label setStringValue:labelText];
        [colorWell setColor:colorValue];
    }

	


}

/*
- (void)setSelected:(BOOL)flag {
	[super setSelected:	flag];
	
	NSBox *view	= (NSBox*) [self view];
	NSColor *color;
	NSColor *lineColor;
	
	if (flag) {
		color		= [NSColor selectedControlColor];
		lineColor	= [NSColor blackColor];
		
	} else {
		color		= [NSColor controlBackgroundColor];
		lineColor	= [NSColor controlBackgroundColor];
		
//		[view setBorderType:NSNoBorder];
	}
	
	[view setBorderColor:lineColor];
	[view setFillColor:color];
}

*/

- (void) awakeFromNib {
	NSBox *view	= (NSBox*) [self view];

	[view setTitlePosition:NSNoTitle];
	[view setBoxType:NSBoxCustom];
    [view setBorderType:NSNoBorder];
}

@end