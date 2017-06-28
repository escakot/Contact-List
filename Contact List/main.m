//
//  main.m
//  Contact List
//
//  Created by Errol Cheong on 2017-06-27.
//  Copyright © 2017 Errol Cheong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h" 
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        InputCollector *inputCollector = [[InputCollector alloc] init];
        ContactList *contactList = [[ContactList alloc] init];
        
        BOOL runProg = YES;
        do {
            NSString *userInput = [inputCollector inputForPrompt:@"\nWhat would you like to do next?\n"
                                   "new - Create a new contact\n"
                                   "list - List all contacts\n"
                                   "show # - Display contact at index #\n"
                                   "find <name> - Search contact name/email for match\n"
                                   "quit - Exit Application\n"];
            
            if ([userInput isEqualToString:@"new"]){
                Contact *newContact = [[Contact alloc] init];
                NSString *checkEmail= [inputCollector inputForEmail:@"Enter your email" checkDuplicate:contactList.contactArray];
                if ([checkEmail isEqualToString:@"\nInvalid email!"]) {
                    NSLog(@"%@", checkEmail);
                } else {
                    newContact.email = checkEmail;
                    newContact.firstName = [inputCollector inputForPrompt:@"Enter your first name"];
                    newContact.lastName = [inputCollector inputForPrompt:@"Enter your last name"];
                    [contactList addContact:newContact];
                }
            }
            
            if ([userInput isEqualToString:@"list"]){
                if (contactList.contactArray.count == 0){
                    NSLog(@"No contacts avaiable. Please use new option.");
                } else {
                    [contactList listContacts];
                }
            }
           
            if ([userInput hasPrefix:@"show"]){
                int contactIndex = [[userInput substringFromIndex:userInput.length -1] intValue];
//                NSLog(@"%i", contactIndex);
                if (contactList.contactArray.count > 0) {
                    Contact *showContact = contactList.contactArray[contactIndex];
                    [showContact contactInfo];
                } else {
                    NSLog(@"Contact not found");
                }
            }

            if ([userInput hasPrefix:@"find"]){
                NSString *searchTerm = [userInput componentsSeparatedByString:@" "].lastObject;
                [contactList searchContacts:searchTerm];
            }
            
            if ([userInput isEqualToString:@"quit"]){
                runProg = NO;
                NSLog(@"Goodbye!");
            }
        }while(runProg);
    }
    return 0;
}
