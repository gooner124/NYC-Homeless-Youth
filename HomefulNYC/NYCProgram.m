//
//  NYCProgram.m
//  HomefulNYC
//
//  Created by Aditya Narayan on 4/22/16.
//  Copyright © 2016 TURN TO TECH. All rights reserved.
//

#import "NYCProgram.h"

@implementation NYCProgram

-(instancetype)initWithProgramName:(NSString*)programName withBorough:(NSString*)borough withPhoneNumber:(NSString*)phoneNumber withAgency:(NSString*)agency withURL:(NSString*)URL withAddress:(NSString*)address withProgramType:(NSString*)programType{
    
    _programName = programName;
    _borough = borough;
    _phoneNumber = phoneNumber;
    _agency = agency;
    _URL = URL;
    _address = address;
    _programType = programType;
    return self;
    
}

@end