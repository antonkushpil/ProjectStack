//
//  StackOverflow.m
//  StackOverflow
//
//  Created by Anton Kushpil on 3/1/16.
//  Copyright © 2016 Anton Kushpil. All rights reserved.
//

#import "StackOverflow.h"

@interface StackOverflow()

@property (strong, nonatomic) NSMutableArray *myArray;

@end

@implementation StackOverflow

- (id)init
{
    self = [super init];
    if(self)
    {
        self.myArray = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)pushElement:(NSNumber *)pushedNumber
{
    [self.myArray addObject: pushedNumber];
    NSLog(@"Element %d was added to stack, number of elements %lu", [pushedNumber intValue], (unsigned long)self.myArray.count);
}

- (NSNumber *)popElement
{
    if (self.myArray.count == 0)
    {
        return nil;
    }
    NSNumber *lastElement = [self.myArray lastObject];
    
    NSLog(@"Element %d was removed from stack, number of elements %lu",
          [lastElement intValue], (unsigned long) self.myArray.count);
    [self.myArray removeLastObject];
    
    return lastElement;
}

@end
