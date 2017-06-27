//
//  InputCollector.m
//  Contact List
//
//  Created by Errol Cheong on 2017-06-27.
//  Copyright © 2017 Errol Cheong. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

- (NSString *)inputForPrompt:(NSString *)promptString {
    char inputChar[255];
    fgets(inputChar, 255, stdin);
    NSLog(@"%@>", promptString);
    
    return [NSString stringWithCString:inputChar encoding:NSUTF8StringEncoding];
}

@end
