//
//  TrackAPIClient.m
//  CocoaPodsExample
//
//  Created by Stephan Gopaul on 31/03/2014.
//  Copyright (c) 2014 Stephan Gopaul. All rights reserved.
//

#import "TrackAPIClient.h"

NSString * const kTraktAPIKey = @"47ced66587c5f7d37072a9125fc03a5c";
NSString * const kTraktBaseURLString = @"http://api.trakt.tv";

@implementation TrackAPIClient

+(TrackAPIClient *)sharedClient {
    
    static TrackAPIClient *_sharedClient = nil;
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^{
        _sharedClient = [[self alloc] initWithBaseURL:[NSURL URLWithString:kTraktBaseURLString]];
    });
    return _sharedClient;
    
    /*static dispatch_once_t pred;
    static SBAPIManager *_sharedManager = nil;
    
    dispatch_once(&pred, ^{ _sharedManager = [[self alloc] initWithBaseURL:[NSURL URLWithString:@"http://localhost:3000"]]; }); // You should probably make this a constant somewhere
    return _sharedManager;*/
    
}

-(id)initWithBaseURL:(NSURL *)url {
    /*self = [super initWithBaseURL:url];
    if (!self) {
        return nil;
    }
    [self registerHTTPOperationClass:[AFJSONRequestOperation class]];
    // Accept HTTP Header; see http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.1
	[self setDefaultHeader:@"Accept" value:@"application/json"];
    self.parameterEncoding = AFJSONParameterEncoding;
    return self;*/
    
    self = [super initWithBaseURL:url];
    if(!self)
        return nil;
    
    self.requestSerializer = [AFJSONRequestSerializer serializer];
    self.responseSerializer = [AFJSONResponseSerializer serializer];
    
    return self;
}


@end
