//
//  Hippo_iOSTests.m
//  Hippo_iOSTests
//
//  Created by 이 진복 on 12. 2. 22..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import "Hippo_iOSTests.h"

#import "HPData.h"
#import "HPStringData.h"
#import "HPNumberData.h"
#import "HPBooleanData.h"


@implementation Hippo_iOSTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testExample
{
    NSLog(@"########## Start test ##########");
    
    HPStringData *stringData = [[HPStringData alloc] initWithStringData:@"문자열 데이터"];
    NSLog(@"HPStringData: %@", stringData);
    
    HPNumberData *numberData = [[HPNumberData alloc] initWithNumberData:[NSNumber numberWithDouble:1234.672895723829]];
    NSLog(@"HPNumberData: %@", numberData);
    
    HPBooleanData *booleanData = [[HPBooleanData alloc] initWithBooleanData:YES];
    NSLog(@"HPBooleanData: %@", booleanData);


    
    NSLog(@"##########  End test  ##########");
}

@end
