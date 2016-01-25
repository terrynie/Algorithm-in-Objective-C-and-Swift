//
//  main.m
//  alogrithm_oc
//
//  Created by Terry on 1/20/16.
//  Copyright © 2016 Terry. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *test = @"Hello World! 5";
        NSLog(@"%lu",(unsigned long)test.length);
        NSLog(@"%lu",(unsigned long)[test length]);
        NSString *second = [NSString stringWithFormat:@"Hello World! %d",5];
        if ([test isEqual:second]) {
            NSLog(@"%@ is equal to %@",test,second);
        }
        
        if ([test isEqualToString:second]) {
            NSLog(@"%@ is equal to %@",test,second);
        }
        NSString *subStr1 = [test substringFromIndex:3]; //"lo World! 5"
        NSString *subStr2 = [test substringToIndex:5];   //"Hello"
        NSString *subStr3 = [test substringWithRange:NSMakeRange(1, 5)];  //"ello "
        char c = [test characterAtIndex:2]; //'l'
//        NSInteger index = [test ]
        
        
        
        
        NSLog(@"%@;%@;%@;%c",subStr1,subStr2,subStr3,c);
        
        char d[20] = "abcdefghijklmn";
        test = [test initWithCharactersNoCopy:d length:5 freeWhenDone:true];
        NSLog(@"%@",test);
        
    }
    return 0;
}
