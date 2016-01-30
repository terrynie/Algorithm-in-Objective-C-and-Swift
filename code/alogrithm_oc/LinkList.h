//
//  LinkedList.h
//  alogrithm_oc
//
//  Created by Terry on 1/30/16.
//  Copyright © 2016 Terry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LinkNode: NSObject
{
    NSInteger _value;
    LinkNode *_next;
}
@property NSInteger _value;
@property LinkNode *_next;

- (void)initWithValue: (NSInteger)val;
@end
