//
//  ViewController.m
//  CocoaPodsExample
//
//  Created by Stephan Gopaul on 31/03/2014.
//  Copyright (c) 2014 Stephan Gopaul. All rights reserved.
//

#import "ViewController.h"
#import "TrackAPIClient.h"
#import <AFNetworking.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Create the Track API Client
    //TrackAPIClient *client = [TrackAPIClient sharedClient];
    
    // Create the date instance with today's date
    NSDate *today = [NSDate date];
    
    // Create the date formatter
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"yyyyMMdd";
    NSString *todayString = [formatter stringFromDate:today];
    
    // Create the API query request
    NSString *path = [NSString stringWithFormat:@"user/calendar/shows.json/%@/%@/%@/%d", @"47ced66587c5f7d37072a9125fc03a5c", @"marcelofabri", todayString, 3];
    
    [[TrackAPIClient sharedClient] GET:path
                            parameters:nil
                               success:^(AFHTTPRequestOperation *operation, id responseObject) {
                                   
                                   NSLog(@"Success: %@", responseObject);
                                   
                               }
                               failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                                   
                                   NSLog(@"Failure: %@", error.localizedDescription);
                                   
                               }];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pageChanged:(id)sender {
}
@end
