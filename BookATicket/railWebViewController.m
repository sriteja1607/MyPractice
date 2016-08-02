//
//  railWebViewController.m
//  BookATicket
//
//  Created by Sriteja Thuraka on 7/25/16.
//  Copyright © 2016 teja. All rights reserved.
//

#import "railWebViewController.h"

@interface railWebViewController ()

@end

@implementation railWebViewController
@synthesize  railStr1,railStr2,railLabel,railWeb,railacv;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
    [railLabel setText:railStr1];
    
    NSURL *railUrl = [NSURL URLWithString:railStr2];
    NSURLRequest *railUrlRequest = [NSURLRequest requestWithURL:railUrl];
    [railWeb loadRequest:railUrlRequest];
    
}

-(void)webViewDidStartLoad:(UIWebView *)webView
{
    [railacv startAnimating];
}
-(void)webViewDidFinishLoad:(UIWebView *)webView
{
    [railacv stopAnimating];
    [railacv setHidesWhenStopped:YES];
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
