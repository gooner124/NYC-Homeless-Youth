//
//  WebViewController.h
//  HomefulNYC
//
//  Created by Matthew Paravati on 4/22/16.
//  Copyright © 2016 TURN TO TECH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>


@interface WebViewController : UIViewController <UIWebViewDelegate>

@property (nonatomic, strong) NSString *programName;
@property(strong,nonatomic) WKWebView *webView;

@end
