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
    NSLog(@"%@",promptString);
    char inputChar[255];
    fgets(inputChar, 255, stdin);
    
    NSString *inputString = [NSString stringWithCString:inputChar encoding:NSUTF8StringEncoding];
    NSCharacterSet *newLineChar = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    
    return [inputString stringByTrimmingCharactersInSet:newLineChar];
}

- (NSString *)inputForEmail:(NSString *)promptString checkDuplicate:(NSMutableArray *)contactArray {
    NSLog(@"%@",promptString);
    char inputChar[255];
    fgets(inputChar, 255, stdin);
    
    NSString *inputString = [NSString stringWithCString:inputChar encoding:NSUTF8StringEncoding];
    NSCharacterSet *newLineChar = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    
    NSString *cleanString = [inputString stringByTrimmingCharactersInSet:newLineChar];
    for (int i = 0; i<contactArray.count; i++)
    {
        Contact *currentContact = contactArray[i];
        if ([currentContact.email isEqualToString:cleanString]) {
            return @"\nInvalid email!";
        }
    }
    return cleanString;
}
@end
