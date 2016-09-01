//
//  TableViewController.m
//  AnimationLoadingImage
//
//  Created by Ali on 16/9/1.
//  Copyright © 2016年 Ali. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewCell.h"
#import "UIImageView+AnimationLoading.h"

@interface TableViewController (){
    NSArray *picsArray ;
}
@property (weak, nonatomic) IBOutlet UITableView *table;

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    picsArray = @[@"http://pic.cnitblog.com/avatar/607542/20140226182241.png",
                           @"http://pic.cnitblog.com/avatar/751954/20150430140947.png",
                           @"http://pic.cnitblog.com/avatar/680363/20150315172929.png",
                           @"http://pic.cnitblog.com/avatar/490617/20140612182827.png",
                           @"http://pic.cnitblog.com/avatar/77734/20140925202137.png",
                           @"http://pic.cnitblog.com/avatar/726558/20150302212034.png",
                           @"http://pic.cnitblog.com/avatar/619104/20140622195607.png",
                           @"http://pic.cnitblog.com/avatar/695863/20150416154015.png",
                           @"http://pic.cnitblog.com/avatar/526391/20141226102235.png",
                           @"http://pic.cnitblog.com/avatar/485855/20140824172432.png",
                           @"http://pic.cnitblog.com/avatar/741774/20150408141002.png",
                           @"http://pic.cnitblog.com/avatar/618574/20140329230350.png"];
    
    
    [_table registerNib:[UINib nibWithNibName:@"TableViewCell" bundle:nil] forCellReuseIdentifier:@"TableViewCell"];
    _table.rowHeight = 146.f;
    
    
}


#pragma mark - UITableViewDataSource
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return picsArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewCell"];
    [cell.imgIcon setImageWithAnimationOfUrl:picsArray[indexPath.row] placeHolder:[UIImage imageNamed:@"1.jpg"]];
    
    return cell;
    
}



@end
