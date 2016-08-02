//
//  railWebViewController.h
//  BookATicket
//
//  Created by Sriteja Thuraka on 7/25/16.
//  Copyright © 2016 teja. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface railWebViewController : UIViewController<UIWebViewDelegate>

{
    NSString *railStr1;
    NSString *railStr2;
}
@property (strong, nonatomic) IBOutlet UILabel *railLabel;
@property (strong, nonatomic)NSString *railStr1;
@property (strong, nonatomic)NSString *railStr2;
@property (strong, nonatomic)IBOutlet UIWebView *railWeb;
@property (strong,nonatomic)IBOutlet UIActivityIndicatorView *railacv;
@end
