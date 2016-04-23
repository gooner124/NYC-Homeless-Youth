//
//  AppDelegate.h
//  HomefulNYC
//
//  Created by Aditya Narayan on 4/22/16.
//  Copyright © 2016 TURN TO TECH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProgramTypeView.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate, UINavigationControllerDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) ProgramTypeView *programTypeView;
@property (strong, nonatomic) UINavigationController *navigationController;


@end

