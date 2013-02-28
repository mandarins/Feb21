//
//  View.m
//  Hello
//
//  Created by nyuguest on 2/7/13.
//  Copyright (c) 2013 nyuguest. All rights reserved.
//

#import "View.h"

@implementation View
@synthesize touchPoint;
- (id) initWithFrame: (CGRect) frame
{
	self = [super initWithFrame:frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor yellowColor];
        self.touchPoint = CGPointMake(0, frame.origin.x+16);
	}
	return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void) drawRect: (CGRect) rect
{
	// Drawing code
	UIFont *font = [UIFont systemFontOfSize: 16.0];
	NSString *string = @"Hello, World!";
	CGPoint point = CGPointMake(0.0, 0.0);
	[string drawAtPoint: point withFont: font];
    
    // Draw date on the iPhone
    NSDateFormatter *formatter;
    NSString        *dateString;
    
    formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"dd-MM-yyyy HH:mm:ss.SSS"];
    
    dateString = [formatter stringFromDate:[NSDate date]];
    //CGPoint timePoint = CGPointMake(0, point.x+16);
    [dateString drawAtPoint: touchPoint withFont: font];
}

// override hitTest so that the date time string follows the mouse touch
// 
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    self.touchPoint = point;
    return self;
}
@end
