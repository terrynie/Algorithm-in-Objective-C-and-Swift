//
//  LinkedList.m
//  alogrithm_oc
//
//  Created by Terry on 1/30/16.
//  Copyright © 2016 Terry. All rights reserved.
//

#import "LinkList.h"

@implementation LinkNode

@synthesize _next;
@synthesize _value;

- (void)initWithValue:(NSInteger)val {
    _value = val;
    _next = nil;
}

@end
