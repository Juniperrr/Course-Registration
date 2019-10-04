//
//  courseDict.h
//  iOSAssignment1
//
//  Created by Juniper Sohn on 2/19/19.
//  Copyright © 2019 nyu.edu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student_Info.h"
NS_ASSUME_NONNULL_BEGIN

@interface courseDict : NSMutableDictionary

@property NSMutableDictionary *course;

//@property NSString* name;
//@property NSString* add;
//@property float midtermEx;
//@property float finalEx;
//@property int homework1;
//@property int homework2;
//@property int homework3;
//@property float totalAverage;

- (bool) Add_Student: (NSString*) nameVal andAdd: (NSString*) addVal;

- (bool) Add_Test: (NSString*) nameVal andScore: (int) scoreVal andTest: (NSString*) testVal;

- (bool) Add_HW: (NSString*) nameVal andScore: (int) scoreVal andHW: (NSString*) hwVal;

//- (bool) Student_Average: (NSMutableDictionary*) dictval andName: (NSString*) nameVal;
- (bool) Student_Average: (NSString*) nameVal;


- (void)setObject:(NSString*)anObject forKey:(id<NSCopying>)key;

@end

NS_ASSUME_NONNULL_END
