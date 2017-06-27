//
//  main.m
//  Contact List
//
//  Created by Errol Cheong on 2017-06-27.
//  Copyright © 2017 Errol Cheong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        BOOL runProg = YES;
        do {
            InputCollector *inputCollector = [[InputCollector alloc] init];
            NSString *userInput = [inputCollector inputForPrompt:@""];
           
            if ([userInput isEqualToString:@"quit"]){
                runProg = NO;
            }
        }while(runProg);
    }
    return 0;
}
