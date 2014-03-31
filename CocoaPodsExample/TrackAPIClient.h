//
//  TrackAPIClient.h
//  CocoaPodsExample
//
//  Created by Stephan Gopaul on 31/03/2014.
//  Copyright (c) 2014 Stephan Gopaul. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFHTTPRequestOperationManager.h>

extern NSString *const kTrackAPIKey;
extern NSString *const kTrackBaseURLString;

@interface TrackAPIClient : AFHTTPRequestOperationManager

+(TrackAPIClient *)sharedClient;

@end
