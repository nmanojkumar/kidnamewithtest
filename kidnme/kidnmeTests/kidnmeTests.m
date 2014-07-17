//
//  kidnmeTests.m
//  kidnmeTests
//
//  Created by BSA Univ21 on 11/07/14.
//  Copyright (c) 2014 BSA Univ21. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface kidnmeTests : XCTestCase

@property (strong,nonatomic) NSUserDefaults *defaults;

@end

@implementation kidnmeTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testkidnme
{
    NSString *givenname=@"Manoj";
   [[NSUserDefaults standardUserDefaults] setObject:givenname forKey:@"kidsnme"];
    NSString *savedkidnmeval = [[NSUserDefaults standardUserDefaults]
                                stringForKey:@"kidsnme"];
    XCTAssertEqual(givenname, savedkidnmeval, @"Equal");
}

@end
