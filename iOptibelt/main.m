//
//  main.m
//  iOptibelt
//
//  Created by Fabian Boulegue on 02.07.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "iOptibeltAppDelegate.h"

int main(int argc, char *argv[])
{
    int retVal = 0;
    @autoreleasepool {
        retVal = UIApplicationMain(argc, argv, nil, NSStringFromClass([iOptibeltAppDelegate class]));
    }
    return retVal;
}
