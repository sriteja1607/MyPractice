//
//  RailViewController.h
//  BookATicket
//
//  Created by Sriteja Thuraka on 7/22/16.
//  Copyright © 2016 teja. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RailViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    
}
@property (strong, nonatomic) IBOutlet UITableView *railTable;
@property (strong,nonatomic) NSArray *railArry, *railArry1;

@end
