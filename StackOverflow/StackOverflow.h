//
//  StackOverflow.h
//  StackOverflow
//
//  Created by Anton Kushpil on 3/1/16.
//  Copyright © 2016 Anton Kushpil. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StackOverflow : NSObject

@property (assign, nonatomic) int arraySize;
@property (strong, nonatomic) NSMutableArray *myArray;

- (void)pushElement:(NSNumber *)pushedNumber;
- (NSNumber *)popElement;

@end
