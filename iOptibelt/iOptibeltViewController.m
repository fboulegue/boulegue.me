//
//  iOptibeltViewController.m
//  iOptibelt
//
//  Created by Fabian Boulegue on 02.07.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iOptibeltViewController.h"

@implementation iOptibeltViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle



- (void)viewDidLoad
    {
//First Start Alert
        NSString *start_alert = [[NSUserDefaults standardUserDefaults] objectForKey:@"alert_start"];
        if(start_alert == nil)
        {
            [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:@"alert_start"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            UIAlertView *alert_start = [[UIAlertView alloc] initWithTitle:@"iOptibelt" 
                                                                  message:@"This application need a active internet connection. Please make sure you have one." 
                                                                 delegate:self 
                                                        cancelButtonTitle:@"OK"
                                                        otherButtonTitles:nil];
            [alert_start show];
            [alert_start release];
            
        }
//WebView 
    for (id subview in webView.subviews)
        if ([[subview class] isSubclassOfClass: [UIScrollView class]])
            ((UIScrollView *)subview).bounces = NO;
    
    [super viewDidLoad];
	[webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://boulegue.me"]]];
    /*LocalHTMLStorage
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"]isDirectory:NO]]];*/
    [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(checkLoad) userInfo:nil repeats:YES];
    [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(checkNotLoad) userInfo:nil repeats:YES];
    
}

-(void)checkLoad {
    if (webView.loading) {
        [active startAnimating];
    }
}
//Buttons
-(void)checkNotLoad {
    if (!(webView.loading)) {
        [ active stopAnimating];
    }
}
- (IBAction)tele_button:(id)sender;{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel://05252932286"]];
}
- (IBAction)mail_button:(id)sender;{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"mailto://info@optibelt.com"]];
}
- (IBAction)web_button:(id)sender;{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"http://www.optibelt.com"]];
}
- (IBAction)news_button:(id)sender;{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"http://www.optibelt.com/news"]]; 
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
