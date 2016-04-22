
//  NYCProgram.h
//  HomefulNYC

//  Created by Macbook Pro on 4/22/16.
//  Copyright © 2016 William Possidento. All rights reserved.

#import <Foundation/Foundation.h>

@interface NYCProgram : NSObject

@property (nonatomic, retain) NSString *programName;
@property (nonatomic, retain) NSString *borough;
@property (nonatomic, retain) NSString *phoneNumber;
@property (nonatomic, retain) NSString *agency;
@property (nonatomic, retain) NSString *URL;
@property (nonatomic, retain) NSString *address;

-(instancetype)initWithProgramName:(NSString*)programName withBorough:(NSString*)borough withPhoneNumber:(NSString*)phoneNumber withAgency:(NSString*)agency withURL:(NSString*)URL withAddress:(NSString*)address;

@end


