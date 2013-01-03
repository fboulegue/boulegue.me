//
//  iOptibeltAppDelegate.h
//  iOptibelt
//
//  Created by Fabian Boulegue on 02.07.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class iOptibeltViewController;

@interface iOptibeltAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) iOptibeltViewController *viewController;

@end
