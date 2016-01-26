//
//  LinkedNode.m
//  alogrithm_oc
//
//  Created by Terry on 1/26/16.
//  Copyright © 2016 Terry. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface LinkNode:NSObject
{
    NSInteger _value;
    LinkNode *_next;
}
- (void)initWithValue: (NSInteger)val;
@end

@implementation LinkNode
- (void)initWithValue:(NSInteger)val {
    _value = val;
    _next = nil;
}


@end
