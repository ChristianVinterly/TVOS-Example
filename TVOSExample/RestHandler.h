//
//  RestHandler.h
//  TVOSExample
//
//  Created by Christian Lysne on 13/09/15.
//  Copyright © 2015 Christian Lysne. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RestHandler : NSObject

+ (instancetype)sharedInstance;

- (void)fetchMovies:(void (^)(NSArray *movies))success failure:(void (^)(NSError *error))failure;

@end
