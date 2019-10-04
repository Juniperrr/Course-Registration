//
//  main.m
//  iOSAssignment1
//
//  Created by Juniper Sohn on 2/17/19.
//  Copyright © 2019 nyu.edu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student_Info.h"
#import "courseDict.h"
//@interface class : NSMutableDictionary
//@end
//
//@implementation class: NSMutableDictionary
//@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        courseDict *course = [[courseDict alloc] init];
        
        //Print all key-value parts from the dictionary --> when you are testing my code, please feel free to edit those 4 lines,
        //According to how you would like to add different components to the dictionary.
        [course Add_Student:@"Peter Rabbit" andAdd:@"Rabbit Hole"];
        [course Add_Test:@"Peter Rabbit" andScore:80 andTest:@"midterm"];
        [course Add_HW:@"Peter Rabbit" andScore:100 andHW:@"homework1"];
        [course Student_Average:@"Peter Rabbit"];
        
        for (NSString *key in course.course) {
            Student_Info *obj = (Student_Info*)[course.course objectForKey: key];
            NSLog(@"%@: ", key);
            [obj Print_Object];
        }
    }
    
    return 0;
}
