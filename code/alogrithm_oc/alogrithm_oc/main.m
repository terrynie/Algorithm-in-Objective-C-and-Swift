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
        [test bo ]
        
        
    }
    return 0;
}
