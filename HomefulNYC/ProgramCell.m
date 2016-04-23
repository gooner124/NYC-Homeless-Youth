//
//  ProgramCell.m
//  After School Program
//
//  Created by Clyfford Millet on 4/22/16.
//  Copyright © 2016 Clyff IOS supercompany. All rights reserved.
//

#import "ProgramCell.h"

@implementation ProgramCell

- (void)awakeFromNib {
    // Initialization code
}
-(id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    if (self) {
        
        NSArray *arrayOfViews = [[NSBundle mainBundle] loadNibNamed:@"ProgramCell" owner:self options:nil];
        if ([arrayOfViews count] < 1) {
            return nil;
        }
        if (![[arrayOfViews objectAtIndex:0] isKindOfClass:[UICollectionViewCell class]]) {
            return nil;
        }
        self = [arrayOfViews objectAtIndex:0 ];
    }
    return self;
}

@end

