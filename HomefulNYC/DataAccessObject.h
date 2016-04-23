//
//  DataAccessObject.h
//  HomefulNYC
//
//  Created by Matthew Paravati on 4/22/16.
//  Copyright © 2016 MatthewParavati. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NYCProgram.h"
#import "NYCProgramType.h"

@interface DataAccessObject : NSObject

+(id)sharedDAO;

-(void)getData;

-(id)getProgramTypes;

-(id)getPrograms;
@end
