//
//  InputCollector.h
//  Contact List
//
//  Created by Errol Cheong on 2017-06-27.
//  Copyright © 2017 Errol Cheong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ContactList.h"

@interface InputCollector : NSObject

-(NSString *)inputForPrompt:(NSString *)promptString;
-(NSString *)inputForEmail:(NSString *)promptString checkDuplicate:(NSMutableArray *)contactArray;

@end
