//
//  PaulQueue.m
//  PaulQueue
//
//  Created by Paul Ade on 2014-01-08.
//  Copyright (c) 2014 Paul Ade. All rights reserved.
//

#import "PaulQueue.h"

@implementation PaulQueue

// Instantiate the PaulQueue Object

- (instancetype)init
{
    self = [super init];
    if (self) {
        queue = [[NSMutableArray alloc] init];
    }
    return self;
}

// Add an object to the queue
- (id)enqueue:(id)obj {
    
    [queue addObject:obj];
    return queue;
}

// Add an object from the head of the queue

- (id)dequeue
{
    id firstObject = nil;
    firstObject = [queue objectAtIndex:0];
    if (firstObject)
        [queue removeObject:firstObject];
    return firstObject;
        
}

// Check if the queue is empty

- (BOOL)isEmpty {
    return [queue count] == 0;
}

// Get the size of the queue

- (NSUInteger)size {
    return [queue count];
}

// Reset the queue

- (void)clear {
    [queue removeAllObjects];
}

@end
