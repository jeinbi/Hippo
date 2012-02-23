/*
 * File name : HPBooleanData.h
 * Date      : February 23, 2012
 * Author    : Jinbock Lee
 * Comment   : Definition of the HPBooleanData class
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
 * The HPBooleanData class is a kind of Hippo's DTO type for boolean data.
 *
 * @since 1.0.0
 */
@interface HPBooleanData : NSObject <HPData>

/**
 * The data for boolean
 */
@property (nonatomic) BOOL booleanData;


/**
 * Initialize an object.
 *
 * @return An object.
 */
- (id)init;

/**
 * initialize an object with a given value as BOOL.
 *
 * @param[in] data The value for boolean.
 * @return An object
 */
- (id)initWithBooleanData:(BOOL)data;

- (void)setJSONObject:(id)object;
- (id)JSONObject;

- (NSString *)description;

@end
