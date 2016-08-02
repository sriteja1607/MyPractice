//
//  RailViewController.m
//  BookATicket
//
//  Created by Sriteja Thuraka on 7/22/16.
//  Copyright © 2016 teja. All rights reserved.
//

#import "RailViewController.h"
#import "railWebViewController.h"

@interface RailViewController ()

@end

@implementation RailViewController
@synthesize railTable,railArry,railArry1;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    railArry = [NSArray arrayWithObjects:@"BookTicket",@"PNR",@"Train timings",@"Train number", nil];
    railArry1 = [NSArray arrayWithObjects:@"https://www.irctc.co.in/eticketing/loginHome.jsf",@"http://www.trainspnrstatus.com/",@"http://www.mapsofindia.com/railway-timetable/",@"http://www.prokerala.com/travel/indian-railway/trains/", nil];
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [railArry count];
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    // create the Rows
    
    NSString *str=@"aa";
    
    UITableViewCell *cell1=[tableView dequeueReusableCellWithIdentifier:str];
    if (cell1==nil) {
        
        cell1=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:str];
    }
    
    
    // Display the data
    
    if (indexPath.section==0) {
        
        
        
        [cell1.textLabel setText:[railArry objectAtIndex:indexPath.row]];
        [cell1 setBackgroundColor:[UIColor orangeColor]];
        [cell1 setAccessoryType:UITableViewCellAccessoryDetailDisclosureButton];
        
     
        
        
    }
    
    
    
    return cell1;
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 100;
}
- (void)tableView:(UITableView *)tableView
accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath{
    
   
  
    

    
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"railDetail"]) {
        NSIndexPath *indexPath = [self.railTable indexPathForSelectedRow];
        railWebViewController *rwvc = [segue destinationViewController];
        rwvc.railStr1 = [railArry objectAtIndex:indexPath.row];
        rwvc.railStr2 = [railArry1 objectAtIndex:indexPath.row];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
