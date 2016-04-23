//
//  WebViewController.m
//  HomefulNYC
//
//  Created by Matthew Paravati on 4/22/16.
//  Copyright © 2016 TURN TO TECH. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController () {
    NSURL *nsurl;
}
@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIFont fontWithName:@"Arial-Bold" size:0.0],NSFontAttributeName, nil]];
    
    self.webView = [[WKWebView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    [self getUrl:self.programName];
    NSURLRequest *nsrequest=[NSURLRequest requestWithURL:nsurl];
    [self.webView loadRequest:nsrequest];
    
    self.webView.frame = CGRectMake(self.view.frame.origin.x,self.view.frame.origin.y, self.view.frame.size.width, self.view.frame.size.height);
    [self.view addSubview:self.webView];
    
}

-(void)getUrl:(NSString*)programName {
    if ([programName caseInsensitiveCompare:@"Seamans Society for Children and Families "]==NSOrderedSame) {
       nsurl = [NSURL URLWithString:@"http://www.roots-wings.org/#&panel1-2"];
        
    }else if([programName caseInsensitiveCompare:@"SCO Family of Services IV"]==NSOrderedSame){
        nsurl = [NSURL URLWithString:@"http://sco.org/about-us/where-we-work/queens/"];
        
    }else if([programName caseInsensitiveCompare:@"Covenant House New York / Under 21"]==NSOrderedSame){
        nsurl = [NSURL URLWithString:@"https://ny.covenanthouse.org/"];
        
    }else if([programName caseInsensitiveCompare:@"Rachel's Place"]==NSOrderedSame){
        nsurl = [NSURL URLWithString:@"http://www.rachelsplaceproductions.org/"];
        
    }else if([programName caseInsensitiveCompare:@"Green Chimneys"]==NSOrderedSame){
        nsurl = [NSURL URLWithString:@"http://www.greenchimneys.org/"];
        
    }else if([programName caseInsensitiveCompare:@"Girls Educational & Mentoring Services, Inc."]==NSOrderedSame){
        nsurl = [NSURL URLWithString:@"http://www.gems-girls.org/"];
        
    }else if([programName caseInsensitiveCompare:@"Bronx Community Pride Center, Inc."]==NSOrderedSame){
        nsurl = [NSURL URLWithString:@"http://blog.bronxlgbtqcenter.org/"];
        
    }else if([programName caseInsensitiveCompare:@"SCO drop in center"]==NSOrderedSame){
        nsurl = [NSURL URLWithString:@"http://sco.org/"];
        
    }else if(([programName caseInsensitiveCompare:@"Safe Horizon, Inc"]==NSOrderedSame) ||
             ([programName caseInsensitiveCompare:@"Safe Horizon"]==NSOrderedSame)){
        nsurl = [NSURL URLWithString:@"http://www.safehorizon.org"];
        
    }else if([programName caseInsensitiveCompare:@"Safe Space NYC, Inc"]==NSOrderedSame){
        nsurl = [NSURL URLWithString:@"http://www.safespacenyc.org/safespace/?"];
        
    }else if([programName caseInsensitiveCompare:@"Inwood House"]==NSOrderedSame){
        nsurl = [NSURL URLWithString:@"http://newyorkcity.ny.networkofcare.org/mh/services/agency.aspx?pid=InwoodHouseMaternityProgram_754_2_0"];
        
    }else if([programName caseInsensitiveCompare:@"Good Shepherd Services"]==NSOrderedSame){
        nsurl = [NSURL URLWithString:@"https://goodshepherds.org"];
        
    }else if([programName caseInsensitiveCompare:@"Ali Forney Center"]==NSOrderedSame){
        nsurl = [NSURL URLWithString:@"http://www.aliforneycenter.org"];
        
    }else if([programName caseInsensitiveCompare:@"SCO Family of Services"]==NSOrderedSame){
        nsurl = [NSURL URLWithString:@"http://sco.org"];
        
    }else {
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"No known website" message:@"Use Google to seach for me info" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction *alertAction){}];
        [alertController addAction:action];
        [self presentViewController:alertController animated:YES completion:nil];
        
        nsurl = [NSURL URLWithString:@"http://www.google.com"];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
