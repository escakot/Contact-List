//
//  ContactList.h
//  Contact List
//
//  Created by Errol Cheong on 2017-06-27.
//  Copyright © 2017 Errol Cheong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property NSMutableArray* contactArray;

-(void)addContact:(Contact *)newContact;

-(void)listContacts;

-(void)searchContacts:(NSString *)searchTerm;

@end
