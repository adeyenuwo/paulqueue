//
//  PaulQueue.m
//  PaulQueue
//
//  Created by Paul Ade on 2014-01-08.
//  Copyright (c) 2014 Paul Ade. All rights reserved.
//

#import "PaulQueue.h"

@implementation PaulQueue

- (instancetype)init
{
    self = [super init];
    if (self) {
        queue = [[NSMutableArray alloc] init];
    }
    return self;
}

- (id)enqueue:(id)obj {
    
    [queue addObject:obj];
    return queue;
}

- (id)dequeue
{
    id firstObject = nil;
    firstObject = [queue objectAtIndex:0];
    if (firstObject)
        [queue removeObject:firstObject];
    return firstObject;
        
}

- (BOOL)isEmpty {
    return [queue count] == 0;
}

- (NSUInteger)size {
    return [queue count];
}

- (void)clear {
    [queue removeAllObjects];
}

@end
