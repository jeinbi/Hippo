/*
 * File name : HPArrayData.m
 * Date      : February 23, 2012
 * Author    : Jinbock Lee
 * Comment   : Implementation of the HPArrayData class
 *
 * Modify date    :
 * Modify author  : 
 * Modify comment :
 *
 * Copyright (c) 2012 LoveToo. All rights reserved.
 */

#import "HPArrayData.h"


@implementation HPArrayData {
@private
    /**
     * Array for instances of HPData class
     */
    NSMutableArray *_arrayData;
}


- (id)init {
    self = [super init];
    
    if (self) {
        // Initialize variables
        _arrayData = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void)addData:(id<HPData>)data {
    [_arrayData addObject:data];
}

- (void)insertData:(id<HPData>)data AtIndex:(NSUInteger)index {
    [_arrayData insertObject:data atIndex:index];
}

- (void)setData:(id<HPData>)data AtIndex:(NSUInteger)index {
    [_arrayData replaceObjectAtIndex:index withObject:data];
}

- (id<HPData>)dataAtIndex:(NSUInteger)index {
    return [_arrayData objectAtIndex:index];
}

- (void)removeDataAtIndex:(NSUInteger)index {
    [_arrayData removeObjectAtIndex:index];
}

- (NSUInteger)count {
    return [_arrayData count];
}

- (void)clear {
    [_arrayData removeAllObjects];
}

- (void)setJSONObject:(id)object {
    // Whether a instance of NSArray class
    if ([object isKindOfClass:[NSArray class]] == YES) {
        // Process one by one
        for (id data in object) {
            if ([data isKindOfClass:[NSString class]] == YES) {
            } else if (strcmp([data objCType], @encode(BOOL)) == 0) {
            } else if ([data isKindOfClass:[NSNumber class]] == YES) {
            } else if ([data isKindOfClass:[NSArray class]] == YES) {
            } else if ([data isKindOfClass:[NSDictionary class]] == YES) {
            } else if ([data isKindOfClass:[NSNull class]] == YES) {
            } else {
                NSString *reason = [NSString stringWithFormat:@"The JSON object not supports an instance of %@ class", NSStringFromClass([data class])];
                
                // Throws a exception
                @throw [NSException exceptionWithName:NSInvalidArgumentException reason:reason userInfo:nil];                
            }
        }
    } else {
        NSString *reason = @"The JSON object of HPArrayData must be an instance of NSArray class.";
        
        // Throws a exception
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:reason userInfo:nil];
    }
}

- (id)JSONObject {
    // New array for JSON objects
    NSMutableArray *JSONArray = [NSMutableArray arrayWithCapacity:[_arrayData count]];
    
    // Add JSON object
    for (id<HPData> data in _arrayData) {
        [JSONArray addObject:[data JSONObject]];
    }

    // Type casting to NSArray
    return (NSArray *)JSONArray;
}

- (NSString *)description {
    NSMutableString *desc = [[NSMutableString alloc] init];

    // Describe as "STRING", NUMBER, true, false
    for (id<HPData> data in _arrayData) {
        // Add comma-separated
        if ([desc length] != 0) {
            [desc appendString:@", "];
        }
        
        // Add description of HPData
        [desc appendString:[data description]];
    }
    
    // Set square brackets
    return [NSString stringWithFormat:@"[%@]", desc];
}

@end
