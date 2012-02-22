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
    
    [stringData setStringData:(id)[NSNull null]];
    
    //    NSLog(@"HPStringData: %@", stringData);
    
    //    HPNumberData *numberData = [[HPNumberData alloc] initWithData:[NSNumber numberWithDouble:1234.0]];
    //    NSLog(@"HPNumberData: %@", numberData);
    
    
    NSString *json = @"{\"key1\":\"value1\", \"key2\":true}";
    NSData *data = [json dataUsingEncoding:NSUTF8StringEncoding];
    
    
    id aaa = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];    
    NSLog(@"%@", aaa);
    NSLog(@"%@", [[aaa objectForKey:@"key2"] class]);
    
    BOOL b = YES;
    
    
    
    [aaa setObject:[NSNumber numberWithBool:1] forKey:@"key3"];
    
    NSData *bbb = [NSJSONSerialization dataWithJSONObject:aaa options:NSJSONWritingPrettyPrinted error:nil];
    NSLog(@"%@", [[NSString alloc] initWithData:bbb encoding:NSUTF8StringEncoding]);
    
    NSNumber *number = [NSNumber numberWithInt:10];
    NSString *str = (NSString *)number;
    NSLog(@"AAA %@", [str class]);
    
    
    
    NSLog(@"##########  End test  ##########");
}

@end
