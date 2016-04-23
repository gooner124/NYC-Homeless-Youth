//
//  ProgramCell.h
//  After School Program
//
//  Created by Clyfford Millet on 4/22/16.
//  Copyright © 2016 Clyff IOS supercompany. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProgramCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *programName;
@property (weak, nonatomic) IBOutlet UILabel *url;
@property (weak, nonatomic) IBOutlet UILabel *borough;
@property (weak, nonatomic) IBOutlet UILabel *siteName;
@property (weak, nonatomic) IBOutlet UILabel *phoneNumber;
//@property (weak, nonatomic) IBOutlet UILabel *address;

@end
