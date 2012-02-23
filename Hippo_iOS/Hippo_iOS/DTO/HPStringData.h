/*
 * File name : HPStringData.h
 * Date      : February 21, 2012
 * Author    : Jinbock Lee
 * Comment   : Definition of the HPStringData class
 *
 * Modify date    :
 * Modify author  : 
 * Modify comment :
 *
 * Copyright (c) 2012 LoveToo. All rights reserved.
 */

#import <Foundation/Foundation.h>
#import "HPData.h"


/**
 * The HPStringData class is a kind of Hippo's DTO type for string data.
 *
 * @since 1.0.0
 */
@interface HPStringData : NSObject <HPData>

/**
 * The data for string.
 */
@property (nonatomic, strong) NSString *stringData;


/**
 * Initialize an object.
 *
 * @return An object.
 */
- (id)init;

/**
 * initialize an object with a given value as NSString.
 *
 * @param[in] data The value for string.
 * @return An object.
 */
- (id)initWithStringData:(NSString *)data;

- (void)setJSONObject:(id)object;
- (id)JSONObject;

- (NSString *)description;

@end
