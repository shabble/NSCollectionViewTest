#import <Cocoa/Cocoa.h>
#import "ColorWellGroup.h"

@interface WindowController : NSWindowController {

    ColorWellGroup *wellGroup;
    
}
- (IBAction)addAction:(id)sender;
- (IBAction)removeAction:(id)sender;



@end
