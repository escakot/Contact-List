//
//  Contact.m
//  Contact List
//
//  Created by Errol Cheong on 2017-06-27.
//  Copyright © 2017 Errol Cheong. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (void) contactInfo {
    NSLog(@"\nFull Name: %@ %@\n"
          "Email: %@", self.firstName, self.lastName, self.email);
}

@end
