//
//  StackOverflow.m
//  StackOverflow
//
//  Created by Anton Kushpil on 3/1/16.
//  Copyright © 2016 Anton Kushpil. All rights reserved.
//

#import "StackOverflow.h"

@implementation StackOverflow

- (id)init
{
    self = [super init];
    if(self)
    {
        self.myArray = [[NSMutableArray alloc] init];
        self.arraySize = 0;
        
    }
    return self;
}

- (void)pushElement:(NSNumber *)pushedNumber
{
    [self.myArray insertObject: pushedNumber atIndex:self.arraySize];
    self.arraySize++;
    NSLog(@"Element %d was added to stack, number of elements %d", [pushedNumber intValue], self.arraySize);
}

- (NSNumber *)popElement
{
    if (self.arraySize == 0)
    {
        return nil;
    }
    NSNumber *lastElement = [self.myArray objectAtIndex:(self.arraySize-1)];
    self.arraySize--;
    NSLog(@"Element %d was removed from stack, number of elements %d",
          [lastElement intValue], self.arraySize);
    [self.myArray removeLastObject];
    
    return lastElement;
}

@end
