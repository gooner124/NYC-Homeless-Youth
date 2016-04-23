//
//  NYCProgramType.m
//  HomefulNYC
//
//  Created by Aditya Narayan on 4/22/16.
//  Copyright © 2016 TURN TO TECH. All rights reserved.
//

#import "NYCProgramType.h"

@implementation NYCProgramType

-(instancetype)initWithProgramTypeName:(NSString*)programTypeName withProgramTypeDescription:(NSString*)programTypeDescription withProgramTypeDetailedDescription:(NSString*)programTypeDetailedDescription {
    
    _programTypeName = programTypeName;
    _programTypeDescription = programTypeDescription;
    _programTypeDetailedDescription = programTypeDetailedDescription;
    return self;
    
}

-(void)inputDescriptions{
    if ([self.programTypeName isEqualToString: @"Drop-In Center"]){
        self.programTypeDescription = @"Drop-In centers provide hot meals, showers, laundry facilities, clothing, medical care, recreational space, employment referrals and other social services. Staff also can help clients find a safe and secure place to sleep.";
    }
    else if ([self.programTypeName isEqualToString: @"Crisis Shelter"]){
        self.programTypeDescription = @"Crisis Shelters are voluntary, short-term residential programs provide emergency shelter and crisis intervention services. These shelters aim at family reunification or, if family reunification is not possible, arranging appropriate transitional and long-term placements.";
    }
    else if ([self.programTypeName isEqualToString: @"Transitional Independent Living (TIL)"]){
        self.programTypeDescription = @"TIL facilities provide homeless youth between the ages of 16 and 21 with support and shelter as they work to establish an independent life. TILs can offer educational programs, vocational training, job placement assistance, counseling, and basic life skills training.";
    }

}
@end
