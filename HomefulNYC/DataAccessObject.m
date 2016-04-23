//
//  DataAccessObject.m
//  HomefulNYC
//
//  Created by Matthew Paravati on 4/22/16.
//  Copyright © 2016 MatthewParavati. All rights reserved.
//

#import "DataAccessObject.h"

NSString *const APIString = @"https://data.cityofnewyork.us/resource/cge5-k2m7.json";

@interface DataAccessObject(){
    
}
@property (nonatomic, strong) NSArray *programsArray;
@property (nonatomic, strong) NSMutableArray *arrayOfPrograms;

@end

@implementation DataAccessObject

#pragma mark Data Access Object singleton
+(id)sharedDAO {
    static DataAccessObject *sharedData = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedData = [[self alloc] init];
    });
    return sharedData;
}

#pragma mark get data API call
-(void)getData {
    
    NSURL *APIUrl = [NSURL URLWithString:APIString];
    
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:APIUrl];
    [request setHTTPMethod:@"GET"];
    [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    [[session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error){
        if(error){
            NSLog(@"Error: %@", error.localizedDescription);
        }else if(data){
            self.programsArray = [NSJSONSerialization JSONObjectWithData:data
                                                                      options:NSJSONReadingMutableContainers error:&error];
            NSLog(@"Program dictionary: \n%@", self.programsArray);
            //self.arrayOfPrograms = [self getPrograms];
        }
    
    }]resume];
}

#pragma mark program type
-(NSMutableArray*)getProgramTypes {
    NSMutableArray *programTypes = [NSMutableArray new];
    
    NYCProgramType *dropInCenter = [NYCProgramType new];
    dropInCenter.programTypeName =  @"Drop-In Center";
    
    NYCProgramType *crisisShelter = [NYCProgramType new];
    crisisShelter.programTypeName =  @"Crisis Shelter";
    
    NYCProgramType *transitionalIndependentLiving = [NYCProgramType new];
    transitionalIndependentLiving.programTypeName = @"Transitional Independent Living (TIL)";
    
    [dropInCenter inputDescriptions];
    [crisisShelter inputDescriptions];
    [transitionalIndependentLiving inputDescriptions];
    
    [programTypes addObjectsFromArray:@[dropInCenter, crisisShelter, transitionalIndependentLiving]];
    
    return programTypes;
}

#pragma mark get programs
-(NSMutableArray*)getPrograms {
    NSMutableArray *NYCPrograms = [[NSMutableArray alloc] init];
    for (NSDictionary *programDictionary in self.programsArray) {
        NSString *programName = [programDictionary objectForKey:@"site_name"];
        NSString *borough = [programDictionary objectForKey:@"borough_community"];
        NSString *phoneNumber = [programDictionary objectForKey:@"contact_number"];
        NSString *agency = [programDictionary objectForKey:@"agency"];
        NSString *location = [programDictionary objectForKey:@"location_1_location"];
        NSString *city = [programDictionary objectForKey:@"location_1_city"];
        NSString *state = [programDictionary objectForKey:@"location_1_state"];
        NSString *zipcode = [programDictionary objectForKey:@"location_1_zip"];
        NSString *address = [NSString stringWithFormat:@"%@, %@, %@, %@", location,city,state,zipcode];
        NSString *programType = [programDictionary objectForKey:@"program"];
        NSString *url = @"";
        
        NYCProgram *program = [[NYCProgram alloc] initWithProgramName:programName withBorough:borough withPhoneNumber:phoneNumber withAgency:agency withURL:url withAddress:address withProgramType:programType];
        
        [NYCPrograms addObject:program];
        
    }
    NSLog(@"%@", NYCPrograms);
    
    return NYCPrograms;
}

@end








