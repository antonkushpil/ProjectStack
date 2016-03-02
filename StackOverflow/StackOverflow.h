//
//  StackOverflow.h
//  StackOverflow
//
//  Created by Anton Kushpil on 3/1/16.
//  Copyright © 2016 Anton Kushpil. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StackOverflow : NSObject

- (void)pushElement:(NSNumber *)pushedNumber;
- (NSNumber *)popElement;

@end
