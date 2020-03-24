//
//  ObjectiveCReviewTests.m
//  ObjectiveCReviewTests
//
//  Created by Ambreen Haleem on 3/23/20.
//  Copyright © 2020 Ambreen Haleem. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "LanguageReview.h"

@interface ObjectiveCReviewTests : XCTestCase

@end

@implementation ObjectiveCReviewTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

/**
 * Create a class, instantiate an object, and call a method that returns a value
 */
- (void)testCreateObjectAndMethodWithReturnValue {
    ReviewClass *obj = [[ReviewClass alloc] init];
    XCTAssertEqual([obj getName], @"ClassReview");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
