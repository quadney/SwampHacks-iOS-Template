//
//  Item2TableViewController.m
//  iOSTemplate
//
//  Created by Sydney Richardson on 2/3/15.
//  Copyright (c) 2015 Swamphacks. All rights reserved.
//

#import "Item2TableViewController.h"
#import "DetailViewController.h"

@interface Item2TableViewController ()

@property (strong, nonatomic) NSArray *strings;

@end

NSString *const cellIdentifier = @"Item2Cell";

@implementation Item2TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.parentViewController.title = @"Table View";
    
    self.strings = [[NSArray alloc] initWithObjects:@"This", @"Is", @"How", @"You", @"Make", @"A", @"Table", @"View", @"Controller", nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [self.strings count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text = [self.strings objectAtIndex:indexPath.row];
    
    return cell;
}
/*
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // you can use this or prepare for segue below
}
*/

#pragma mark - Navigation

// you can use this, or didSelectRowAtIndexPath above ^^
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([segue.identifier isEqualToString:@"DetailSegue"]) {
                                          // this is casting:
        DetailViewController *detailVC = (DetailViewController *)[segue destinationViewController];
        detailVC.index = [[NSNumber alloc] initWithInteger:[self.tableView indexPathForSelectedRow].row];
    }
    
}


@end
