//
//  Feb21AppDelegate.h
//  Feb21
//
//  Created by Salvatore Lentini on 2/27/13.
//  Copyright (c) 2013 Salvatore Lentini. All rights reserved.
//

#import <UIKit/UIKit.h>
@class View;
@interface Feb21AppDelegate : UIResponder <UIApplicationDelegate> {
View *view;
UIWindow *_window;
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;
@property (strong, nonatomic) UIWindow *window;
@end

