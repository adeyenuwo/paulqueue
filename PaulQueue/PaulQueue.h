//
//  PaulQueue.h
//  PaulQueue
//
//  Created by Paul Ade on 2014-01-08.
//  Copyright (c) 2014 Paul Ade. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PaulQueue : NSObject {
    NSMutableArray *queue;
}

// Operatios supported by PaulQueue
- (id)enqueue:(id)obj;
- (id)dequeue;
- (BOOL)isEmpty;
- (NSUInteger)size;
- (void)clear;

@end
