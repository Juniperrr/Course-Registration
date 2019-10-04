//
//  Student_Info.h
//  iOSAssignment1
//
//  Created by Juniper Sohn on 2/18/19.
//  Copyright © 2019 nyu.edu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "courseDict.h"

NS_ASSUME_NONNULL_BEGIN

@interface Student_Info : NSMutableDictionary

@property NSString* name;
@property NSString* add;
@property float midtermEx;
@property float finalEx;
@property int homework1;
@property int homework2;
@property int homework3;

- (id) init;
- (void) Print_Object;

@end

NS_ASSUME_NONNULL_END
