//
//  Movie.h
//  TVOSExample
//
//  Created by Christian Lysne on 13/09/15.
//  Copyright © 2015 Christian Lysne. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Movie : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *score;
@property (nonatomic, copy) NSString *movieDescription;
@property (nonatomic, copy) NSURL *imageURL;

@end
