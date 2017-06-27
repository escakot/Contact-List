//
//  ContactList.m
//  Contact List
//
//  Created by Errol Cheong on 2017-06-27.
//  Copyright © 2017 Errol Cheong. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        _contactArray = [[NSMutableArray alloc] init];
    }
    return self;
}


-(void)addContact:(Contact *)newContact {
   
    [self.contactArray addObject:newContact];
    
}

-(void)listContacts {
    NSMutableString *concatList = [[NSMutableString alloc] initWithString:@"\n"];
    for (int i = 0; i<self.contactArray.count; i++)
    {
        Contact *currentContact = self.contactArray[i];
        NSString *indexContact = [NSString stringWithFormat:@"%i:<%@ %@>(%@)\n", i, currentContact.firstName, currentContact.lastName, currentContact.email];
        [concatList appendString:indexContact];
    }
    NSLog(@"%@", concatList);
}

-(void)searchContacts:(NSString *)searchTerm {
    NSMutableString *concatList = [[NSMutableString alloc] initWithString:@"\n"];
    for (int i = 0; i<self.contactArray.count; i++)
    {
        Contact *currentContact = self.contactArray[i];
        if ([currentContact.firstName.lowercaseString rangeOfString:searchTerm.lowercaseString].location == NSNotFound &&
            [currentContact.lastName.lowercaseString rangeOfString:searchTerm.lowercaseString].location == NSNotFound &&
            [currentContact.email.lowercaseString rangeOfString:searchTerm.lowercaseString].location == NSNotFound) {
            NSLog(@"\nContact not found.");
        } else {
            NSString *indexContact = [NSString stringWithFormat:@"%i:<%@ %@>(%@)\n", i, currentContact.firstName, currentContact.lastName, currentContact.email];
            [concatList appendString:indexContact];
        }
    }
    NSLog(@"%@", concatList);
}
@end
