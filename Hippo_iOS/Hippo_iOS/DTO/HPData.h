/*
 * File name : HPData.h
 * Date      : February 21, 2012
 * Author    : Jinbock Lee
 * Comment   : Definition of the HPData protocol
 *
 * Modify date    :
 * Modify author  : 
 * Modify comment :
 *
 * Copyright (c) 2012 LoveToo. All rights reserved.
 */

#import <Foundation/Foundation.h>


/**
 * All Hippo's DTO is implemented by this protocol.
 *
 * @since 1.0.0
 */
@protocol HPData <NSObject>

@required
/**
 * Set JSON object to Hippo's data
 *
 * @param[in] object JSON object
 */
- (void)setJSONObject:(id)object;

/**
 * Get JSON object from Hippo's data
 *
 * @param JSON object
 */
- (id)JSONObject;

@end
