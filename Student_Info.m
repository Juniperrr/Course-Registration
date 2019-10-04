//
//  Student_Info.m
//  iOSAssignment1
//
//  Created by Juniper Sohn on 2/18/19.
//  Copyright © 2019 nyu.edu. All rights reserved.
//

#import "Student_Info.h"

@implementation Student_Info

- (id) init {
    if (self = [super init]) {
        _midtermEx = -1.0f;
        _finalEx = -1.0f;
        _homework1 = -1;
        _homework2 = -1;
        _homework3 = -1;
    }
    return self;
}

- (void) Print_Object {
    //NSLog(@"%@: %@", key, [_course objectForKey: key]);
    NSLog (@"Address: %@, Midterm: %f, Final: %f, Homework 1: %i, Homework 2: %i, Homework 3: %i", _add, _midtermEx, _finalEx, _homework1, _homework2, _homework3);
}

@end


