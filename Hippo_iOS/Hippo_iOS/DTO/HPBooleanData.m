/*
 * File name : HPBooleanData.m
 * Date      : February 23, 2012
 * Author    : Jinbock Lee
 * Comment   : Implementation of the HPNumberData class
 *
 * Modify date    :
 * Modify author  : 
 * Modify comment :
 *
 * Copyright (c) 2012 LoveToo. All rights reserved.
 */

#import "HPBooleanData.h"


@implementation HPBooleanData

@synthesize booleanData;


- (id)init {
    // Default value is NO
    return [self initWithBooleanData:NO];
}

- (id)initWithBooleanData:(BOOL)data {
    self = [super init];
    
    if (self) {
        // Initialize variables
        [self setBooleanData:data];
    }
    
    return self;    
}

- (void)setJSONObject:(id)object {
    // Whether a instance of NSNumber class
    if ([object isKindOfClass:[NSNumber class]] == YES) {
        [self setBooleanData:[object boolValue]];
    } else {
        NSString *reason = @"The JSON object of HPBooleanData must be an instance of NSNumber class.";
        
        // Throws a exception
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:reason userInfo:nil];
    }
}

- (id)JSONObject {
    // Create a instance of NSNumber with BOOL
    return [NSNumber numberWithBool:booleanData];
}

- (NSString *)description {
    // Describe as true or false
    NSString *desc = (booleanData == YES) ? @"true" : @"false";    
    return  desc;
}

@end
