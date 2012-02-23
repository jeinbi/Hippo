/*
 * File name : HPStringData.m
 * Date      : February 21, 2012
 * Author    : Jinbock Lee
 * Comment   : Implementation of the HPStringData class
 *
 * Modify date    :
 * Modify author  : 
 * Modify comment :
 *
 * Copyright (c) 2012 LoveToo. All rights reserved.
 */

#import "HPStringData.h"


@implementation HPStringData

@synthesize stringData;


- (id)init {
    return [self initWithStringData:nil];
}

- (id)initWithStringData:(NSString *)data {
    self = [super init];
    
    if (self) {
        // Initialize variables
        [self setStringData:data];
    }
    
    return self;    
}

- (void)setJSONObject:(id)object {
    // Whether a instance of NSString class
    if ([object isKindOfClass:[NSString class]] == YES) {
        [self setStringData:object];
    } else {
        NSString *reason = @"The JSON object of HPStringData must be an instance of NSString class.";
        
        // Throws a exception
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:reason userInfo:nil];
    }
}

- (id)JSONObject {
    // Only a instance of NSString class
    if ([[self stringData] isKindOfClass:[NSString class]] == YES) {
        return [self stringData];
    } else {
        return [NSNull null];
    }
}

- (NSString *)description {
    NSString *desc;
    
    // Whether the data is a instance of NSString class
    if ([[self stringData] isKindOfClass:[NSString class]] == YES) {
        // Describe as "STRING"
        desc = [NSString stringWithFormat:@"\"%@\"", [self stringData]];
    } else {
        // null
        desc = @"(null)";
    }
    
    return  desc;
}

@end
