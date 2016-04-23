//
//  ProgramTypeView.m
//  HomefulNYC
//
//  Created by Aditya Narayan on 4/22/16.
//  Copyright © 2016 TURN TO TECH. All rights reserved.
//

#import "ProgramTypeView.h"

@interface ProgramTypeView ()

@end

@implementation ProgramTypeView

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    self.collectionView.delegate = self;
    // Register cell classes
    [self.collectionView registerClass:[ProgramTypeCell class] forCellWithReuseIdentifier:reuseIdentifier];
    [[DataAccessObject sharedDAO] getData];
    self.programTypes = [[DataAccessObject sharedDAO]getProgramTypes];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    //return [[[DAO sharedManager]programTypes] count];
    return [self.programTypes count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    ProgramTypeCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    NYCProgramType *temp = [self.programTypes objectAtIndex:[indexPath row]];
    cell.programTypeName.text = temp.programTypeName;
    cell.programTypeBlurb.text = temp.programTypeDescription;
    // Configure the cell
    
    
    return cell;
}

-(void) collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    self.programViewController = [[ProgramViewCollectionViewController alloc] initWithNibName:@"ProgramViewCollectionViewController" bundle:nil];
    NYCProgramType *temp = [self.programTypes objectAtIndex:[indexPath row]];
    self.programViewController.programType = temp.programTypeName;
    self.programViewController.title = temp.programTypeName;
    
    [self.navigationController
     pushViewController:self.programViewController
     animated:YES];
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
