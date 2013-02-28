//
//  View.h
//  Hello
//
//  Created by nyuguest on 2/7/13.
//  Copyright (c) 2013 nyuguest. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface View: UIView
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event;
@property CGPoint touchPoint;
@end
