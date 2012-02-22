//
//  HPData2.h
//  Hippo
//
//  Created by 진복 이 on 12. 2. 22..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


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
