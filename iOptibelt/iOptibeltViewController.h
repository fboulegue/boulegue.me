//
//  iOptibeltViewController.h
//  iOptibelt
//
//  Created by Fabian Boulegue on 02.07.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface iOptibeltViewController : UIViewController {
    IBOutlet UIWebView *webView;
    IBOutlet UIActivityIndicatorView *active;
    UIAlertView *alert_start;
    
}

-(IBAction)tele_button:(id)sender;
-(IBAction)mail_button:(id)sender;
-(IBAction)web_button:(id)sender;
-(IBAction)news_button:(id)sender;


@end
