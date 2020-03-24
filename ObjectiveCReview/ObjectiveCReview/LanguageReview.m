//
//  LanguageReview.m
//  ObjectiveCReview
//
//  Created by Ambreen Haleem on 3/23/20.
//  Copyright © 2020 Ambreen Haleem. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LanguageReview.h"

@implementation ReviewClass

- (id)init {
    self = [super init];
    _name = @"ClassReview";
    return self;
}

- (NSString *) getName {
    return _name;
}

@end
