/*
 * File name : HPNumberData.h
 * Date      : February 21, 2012
 * Author    : Jinbock Lee
 * Comment   : Definition of the HPNumberData class
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
 * The HPNumberData class is a kind of Hippo's DTO type for number data, such as integer and double type.
 *
 * @since 1.0.0
 */
@interface HPNumberData : NSObject <HPData>

/**
 * The data for number.
 */
@property (nonatomic, strong) NSNumber *numberData;


/**
 * Initialize an object.
 *
 * @return An object.
 */
- (id)init;

/**
 * initialize an object with a given value as NSNumber
 *
 * @param[in] data The value for number.
 * @return An object.
 */
- (id)initWithNumberData:(NSNumber *)data;

- (void)setJSONObject:(id)object;
- (id)JSONObject;

- (NSString *)description;

@end
