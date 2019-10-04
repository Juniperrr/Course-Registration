//
//  courseDict.m
//  iOSAssignment1
//
//  Created by Juniper Sohn on 2/19/19.
//  Copyright © 2019 nyu.edu. All rights reserved.
//

#import "courseDict.h"
#import "Student_Info.h"

@implementation courseDict

//- (void) Print_Object {
//    //for (NSString *key in course) {
//    //NSLog(@"%@: %@", key, [course objectForKey: key]);
////}
    //NSLog (@"Address: %@, Midterm: %f, Final: %f, Homework 1: %i, Homework 2: %i, Homework 3: %i", _add, _midtermEx, _finalEx, _homework1, _homework2, _homework3);
//}

-(id) init {
    if (self = [super init]) {
        _course = [[NSMutableDictionary alloc]init];
    }
    return self;
}

- (bool) Add_Student: (NSString*) nameVal andAdd: (NSString*) addVal {
    if ([_course objectForKey: nameVal] == nil) {
        Student_Info *obj = [Student_Info new];
        obj.name = nameVal;
        obj.add = addVal;
        [_course setObject: obj forKey: nameVal];
        //[_course setObjectForKey : nameVal];
        return true;
    }
    else {
        return false;
    }
}
- (bool) Add_Test: (NSString*) nameVal andScore: (int) scoreVal andTest: (NSString*) testVal {
    Student_Info *obj = (Student_Info*)[_course objectForKey: nameVal];
    if (obj != nil) {
        if ([testVal isEqualToString:@"midterm"]) {
            obj.midtermEx = scoreVal;
        }
        else if ([testVal isEqualToString:@"final"]) {
            obj.finalEx = scoreVal;
        }
        return true;
    }
    else {
        return false;
    }
}
- (bool) Add_HW: (NSString*) nameVal andScore: (int) scoreVal andHW: (NSString*) hwVal {
    Student_Info *obj = (Student_Info*)[_course objectForKey: nameVal];
    if (obj != nil) {
        if ([hwVal isEqualToString:@"homework1"]) {
            obj.homework1 = scoreVal;
        }
        else if ([hwVal isEqualToString:@"homework2"]) {
            obj.homework2 = scoreVal;
        }
        else if ([hwVal isEqualToString:@"homework3"]) {
            obj.homework3 = scoreVal;
        }
        return true;
    }
    else {
        return false;
    }
}

- (bool) Student_Average: (NSString*) nameVal {
    Student_Info *obj = (Student_Info*)[_course objectForKey: nameVal];
    if (obj != nil) {
        float midtermScore = obj.midtermEx;
        float finalScore = obj.finalEx;
        int homework1Score = obj.homework1;
        int homework2Score = obj.homework2;
        int homework3Score = obj.homework3;
        
        if (midtermScore >= 0 && finalScore >= 0 && homework1Score >= 0
            && homework2Score >= 0 && homework3Score >= 0) {
            float homeworkAverage = (homework1Score + homework2Score + homework3Score) / 3;
            float totalAverage = (0.3 * midtermScore) + (0.4 * finalScore) + (0.3 * homeworkAverage);
            
            NSLog(@"Semester average for %@ =%f@", nameVal, totalAverage);
        }
       return true;
    }
    else {
        return false;
    }
}

- (void)setObject:(NSString*)anObject forKey:(id<NSCopying>)key {
    
}
@end
