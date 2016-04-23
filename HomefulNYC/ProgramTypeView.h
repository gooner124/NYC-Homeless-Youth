//
//  ProgramTypeView.h
//  HomefulNYC
//
//  Created by Aditya Narayan on 4/22/16.
//  Copyright © 2016 TURN TO TECH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProgramTypeCell.h"
#import "DataAccessObject.h"
#import "ProgramViewCollectionViewController.h"

@class ProgramViewCollectionViewController;

@interface ProgramTypeView : UICollectionViewController <UICollectionViewDataSource,UICollectionViewDelegate>

//@property (nonatomic, retain) NSDictionary *programWebsite;
@property (nonatomic, retain) NSMutableArray *programTypes;
@property (nonatomic, strong) ProgramViewCollectionViewController *programViewController;

@end
