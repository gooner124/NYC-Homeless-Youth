//
//  ProgramViewCollectionViewController.h
//  HomefulNYC
//
//  Created by Aditya Narayan on 4/22/16.
//  Copyright © 2016 TURN TO TECH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProgramCell.h"
#import "DataAccessObject.h"
#import "WebViewController.h"

@class WebViewController;

@interface ProgramViewCollectionViewController : UICollectionViewController<UICollectionViewDataSource,UICollectionViewDelegate>

@property (nonatomic, retain) NSMutableArray *programs;
@property (nonatomic, retain) NSString *programType;
@property (nonatomic, strong) WebViewController *webViewController;

@end
