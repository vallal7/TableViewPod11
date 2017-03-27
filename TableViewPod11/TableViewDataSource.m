//
//  TableViewDataSource.m
//  MusicSearch
//
//  Created by Arthi palaniapan on 3/26/17.
//  Copyright © 2017 Ashwin. All rights reserved.
//

#import "TableViewDataSource.h"
#import "TrackModel.h"
static NSString *CellIdentifier = @"CellIdentifier";

@implementation TableViewDataSource

-(instancetype)initWithTableView:(UITableView *)tableView{
   self = [super init];
    _tableView = tableView;
    return self;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArray.count;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    SearchTableViewCell *cell = (SearchTableViewCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    TrackModel *track = [self.dataArray objectAtIndex:(long)[indexPath row]];
    // to do
    //change label to label name
   // cell.trackName.text = track.trackName;
    cell.albumName.text = track.albumName;
   // cell.artistName.text = track.artistName;
    
   /* if (track.albumImage) {
        cell.albumImage.image = track.albumImage;
    } else {
        // set default user image while image is being downloaded
        cell.albumImage.image = [UIImage imageNamed:@"batman.png"];
        
        // download the image asynchronously
        NSURL *url = [NSURL URLWithString:track.albumImageName];
        NSURLSession *session = [NSURLSession sharedSession];
        NSURLSessionDownloadTask *task = [session downloadTaskWithURL:url
                                                    completionHandler:^(NSURL *location,NSURLResponse *response, NSError *error) {
                                                        
                                                        NSData *imageData = [NSData dataWithContentsOfURL:location];
                                                        track.albumImage = [UIImage imageWithData:imageData];
                                                        dispatch_async(dispatch_get_main_queue(), ^{
                                                            cell.albumImage.image = track.albumImage;
                                                            
                                                        });
                                                    }];
        [task resume];
        
    }*/
    
    return cell;
}

-(void)reloadTableDataWithContent:(NSMutableArray *)arr{
    self.dataArray = arr;
    [self.tableView reloadData];
}
@end

@implementation TableViewDelegate

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80.0;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
}

@end
