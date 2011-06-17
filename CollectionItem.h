#import <Cocoa/Cocoa.h>

@interface CollectionItem : NSCollectionViewItem {
    IBOutlet NSColorWell *colorWell;
    IBOutlet NSTextField *label;
}

- (id)copyWithZone:(NSZone *)zone;

- (void)setRepresentedObject:(id)object;
//- (void)setSelected:(BOOL)flag;
- (void)awakeFromNib;

@end