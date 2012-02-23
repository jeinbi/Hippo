/*
 * File name : HPArrayData.h
 * Date      : February 23, 2012
 * Author    : Jinbock Lee
 * Comment   : Definition of the HPArrayData class
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
 * The HPArrayData class is a kind of Hippo's DTO type for array data.
 *
 * @since 1.0.0
 */
@interface HPArrayData : NSObject <HPData>

/**
 * Initialize a object.
 *
 * @return object
 */
- (id)init;

/**
 * Inserts a given data at the end of the array.
 *
 * @param[in] data A object of HPData class.
 */
- (void)addData:(id<HPData>)data;

/**
 * Inserts a given data into the array at a given index.
 *
 * @param[in] data A object of HPData class.
 * @param[in] index The index in the array at which to insert data. This value must not be greater than the count of elements in the array.
 */
- (void)insertData:(id<HPData>)data AtIndex:(NSUInteger)index;

/**
 * Replaces the data at index.
 *
 * @param[in] data A object of HPData class.
 * @param[in] index The index of the data to be replaced. This value must not exceed the bounds of the array.
 */
- (void)setData:(id<HPData>)data AtIndex:(NSUInteger)index;

/**
 * Returns the data located at index.
 *
 * @param[in] index An index within the bounds of the array.
 */
- (id<HPData>)dataAtIndex:(NSUInteger)index;

/**
 * Removes the data at index.
 *
 * @param[in] index The index from which to remove the data in the array. The value must not exceed the bounds of the array.
 */
- (void)removeDataAtIndex:(NSUInteger)index;

/**
 * Returns the number of data in the array.
 *
 * @return The number of data.
 */
- (NSUInteger)count;

/**
 * Removes the array.
 */
- (void)clear;

- (void)setJSONObject:(id)object;
- (id)JSONObject;

- (NSString *)description;

@end
