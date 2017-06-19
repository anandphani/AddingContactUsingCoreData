//
//  AddContactTableView.m
//  AddContactUsingCoreData
//
//  Created by gottipati ananda phani kumar on 19/06/17.
//  Copyright © 2017 GAP. All rights reserved.
//

#import "AddContactTableView.h"
#import "AddNewContactCell1.h"
#import "AddNewContactCell2.h"
#import "AddNewContactCell3.h"
#import "AddNewContactCell4.h"

@interface AddContactTableView ()

@end

@implementation AddContactTableView

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    [tableView setEditing:YES];
    return 4;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if (indexPath.row==0) {
        AddNewContactCell1 * cell = [tableView dequeueReusableCellWithIdentifier:@"AddNewContactCell1" forIndexPath:indexPath];
        return cell;
    }
    else if (indexPath.row==1){
        AddNewContactCell2 * cell = [tableView dequeueReusableCellWithIdentifier:@"AddNewContactCell2" forIndexPath:indexPath];
        cell.textLabel.text = @"Add Mobile Number";
        return cell;
    }
    else if (indexPath.row==2){
        AddNewContactCell3* cell = [tableView dequeueReusableCellWithIdentifier:@"AddNewContactCell3" forIndexPath:indexPath];
         cell.textLabel.text = @"Add  E-MailID";
        return cell;
    }
    else if (indexPath.row==3){
        AddNewContactCell4 * cell = [tableView dequeueReusableCellWithIdentifier:@"AddNewContactCell4" forIndexPath:indexPath];
         cell.textLabel.text = @"Add Adress";
        return cell;
    }
  
    else{
        return 0;
    }
    
}
- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row==0) {
        return  UITableViewCellEditingStyleNone;
    }
    else if (indexPath.row==1) {
        return UITableViewCellEditingStyleInsert;
    }else if (indexPath.row==2) {
        return UITableViewCellEditingStyleInsert;
    }else if (indexPath.row==3) {
        return UITableViewCellEditingStyleInsert;
    }else if (indexPath.row==4) {
        return UITableViewCellEditingStyleInsert;
    }else  {
        return UITableViewCellEditingStyleNone;
    }
    
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
