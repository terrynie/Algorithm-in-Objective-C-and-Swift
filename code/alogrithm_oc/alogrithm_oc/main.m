//
//  main.m
//  alogrithm_oc
//
//  Created by Terry on 1/20/16.
//  Copyright © 2016 Terry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinkList.h"

LinkNode* reverse(LinkNode *head) {
    LinkNode *prev = NULL;
    while (head != NULL) {
        LinkNode *next = [head _next];
        [head set_next:prev];
        prev = head;
        head = next;
    }
    return prev;
}
//测试反转是否成功
int main(int argc, const char * argv[]) {
    LinkNode *a = [LinkNode new];
    LinkNode *b = [LinkNode new];
    LinkNode *c = [LinkNode new];
    [a set_value:1];
    [b set_value:2];
    [c set_value:3];
    [a set_next:b];
    [b set_next:c];
    
    NSLog(@"%lu",[[b _next] _value]); //3
    
    reverse(a);
    
    NSLog(@"%lu",[[b _next] _value]); //1
    
    
    
    return 0;
}

//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        NSString *test = @"Hello World! 5";
//        NSLog(@"%lu",(unsigned long)test.length);
//        NSLog(@"%lu",(unsigned long)[test length]);
//        NSString *second = [NSString stringWithFormat:@"Hello World! %d",5];
//        if ([test isEqual:second]) {
//            NSLog(@"%@ is equal to %@",test,second);
//        }
//        
//        if ([test isEqualToString:second]) {
//            NSLog(@"%@ is equal to %@",test,second);
//        }
//        NSString *subStr1 = [test substringFromIndex:3]; //"lo World! 5"
//        NSString *subStr2 = [test substringToIndex:5];   //"Hello"
//        NSString *subStr3 = [test substringWithRange:NSMakeRange(1, 5)];  //"ello "
//        char c = [test characterAtIndex:2]; //'l'
//        
//        NSMutableString *mutableStr = [NSMutableString stringWithString:@"Hello Objective-C"]; //"Hello Objective-C"
//        [mutableStr insertString:@"World! " atIndex:6];   //"Hello World! Objective-C"
//        [mutableStr appendFormat:@" %d",5];   //"Hello World! Objective-C 5"
//        [mutableStr setString:@"Hello World! Objective-C"];  //"Hello World! Objective-C"
//        [mutableStr appendString:@" is awesome!"]; //"Hello World! Objective-C is awesome!"
//        [mutableStr deleteCharactersInRange:NSMakeRange(12, 24)]; //"Hello World!"
//        [mutableStr replaceCharactersInRange:NSMakeRange(6, 6) withString:@"Objective-C!"]; //"Hello Objective-C!"
//        
//        
//        
//        
//        NSLog(@"%@",mutableStr);
// 
//        
//        NSLog(@"%@;%@;%@;%c",subStr1,subStr2,subStr3,c);
//        
//        
//    }
//    return 0;
//}
