
//  NYCProgramType.h
//  HomefulNYC

//  Created by Macbook Pro on 4/22/16.
//  Copyright © 2016 William Possidento. All rights reserved.

#import <Foundation/Foundation.h>

@interface NYCProgramType : NSObject

@property (nonatomic, retain) NSString *programTypeName;
@property (nonatomic, retain) NSString *programTypeDescription; // "description" got a warning so I gave this a different but longer name.
@property (nonatomic, retain) NSString *programTypeDetailedDescription;

-(instancetype)initWithProgramTypeName:(NSString*)programTypeName withProgramTypeDescription:(NSString*)programTypeDescription withProgramTypeDetailedDescription:(NSString*)programTypeDetailedDescription;

@end



