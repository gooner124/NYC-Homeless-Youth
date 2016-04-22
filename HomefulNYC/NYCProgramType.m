
//  NYCProgramType.m
//  HomefulNYC

//  Created by Macbook Pro on 4/22/16.
//  Copyright © 2016 William Possidento. All rights reserved.

#import "NYCProgramType.h"

@implementation NYCProgramType

-(instancetype)initWithProgramTypeName:(NSString*)programTypeName withProgramTypeDescription:(NSString*)programTypeDescription withProgramTypeDetailedDescription:(NSString*)programTypeDetailedDescription {
    
    self.programTypeName = programTypeName;
    self.programTypeDescription = programTypeDescription;
    self.programTypeDetailedDescription = programTypeDetailedDescription;
    return self;
    
}

@end