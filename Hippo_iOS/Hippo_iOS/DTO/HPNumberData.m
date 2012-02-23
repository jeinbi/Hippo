/*
 * File name : HPNumberData.m
 * Date      : February 21, 2012
 * Author    : Jinbock Lee
 * Comment   : Implementation of the HPNumberData class
 *
 * Modify date    :
 * Modify author  : 
 * Modify comment :
 *
 * Copyright (c) 2012 LoveToo. All rights reserved.
 */

#import "HPNumberData.h"

@implementation HPNumberData

@synthesize numberData;


- (id)init {
    return [self initWithNumberData:nil];
}

- (id)initWithNumberData:(NSNumber *)data {
    self = [super init];
    
    if (self) {
        // Initialize variables
        [self setNumberData:data];
    }
    
    return self;    
}

- (void)setJSONObject:(id)object {
    // Whether a instance of NSNumber class
    if ([object isKindOfClass:[NSNumber class]] == YES) {
        [self setNumberData:object];
    } else {
        NSString *reason = @"The JSON object of HPNumberData must be an instance of NSNumber class.";
        
        // Throws a exception
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:reason userInfo:nil];
    }
}

- (id)JSONObject {
    // Only a instance of NSNumber class
    if ([[self numberData] isKindOfClass:[NSNumber class]] == YES) {
        return [self numberData];
    } else {
        return [NSNull null];
    }
}

- (NSString *)description {
    NSString *desc;
    
    // Whether the data is a instance of NSNumber class
    if ([[self numberData] isKindOfClass:[NSNumber class]] == YES) {
        // Describe as NUMBER
        desc = [NSString stringWithFormat:@"%@", [self numberData]];
    } else {
        // null
        desc = @"(null)";
    }
    
    return  desc;
}

@end
