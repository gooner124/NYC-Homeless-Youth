
//  NYCProgram.m
//  HomefulNYC

//  Created by Macbook Pro on 4/22/16.
//  Copyright © 2016 William Possidento. All rights reserved.

#import "NYCProgram.h"

@implementation NYCProgram

-(instancetype)initWithProgramName:(NSString*)programName withBorough:(NSString*)borough withPhoneNumber:(NSString*)phoneNumber withAgency:(NSString*)agency withURL:(NSString*)URL withAddress:(NSString*)address {
    
    self.programName = programName;
    self.borough = borough;
    self.phoneNumber = phoneNumber;
    self.agency = agency;
    self.URL = URL;
    self.address = address;
    return self;
    
}

@end

