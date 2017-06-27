//
//  Contact.h
//  Contact List
//
//  Created by Errol Cheong on 2017-06-27.
//  Copyright © 2017 Errol Cheong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property NSString* firstName;
@property NSString* lastName;
@property NSString* email;

- (void) contactInfo;

@end
