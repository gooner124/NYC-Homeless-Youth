//
//  ProgramViewCollectionViewController.m
//  HomefulNYC
//
//  Created by Aditya Narayan on 4/22/16.
//  Copyright © 2016 TURN TO TECH. All rights reserved.
//

#import "ProgramViewCollectionViewController.h"
#import "NYCProgram.h"

@interface ProgramViewCollectionViewController ()

@end

@implementation ProgramViewCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIFont fontWithName:@"Arial-Bold" size:0.0],NSFontAttributeName, nil]];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    self.collectionView.delegate = self;
    [self.collectionView registerClass:[ProgramCell class] forCellWithReuseIdentifier:reuseIdentifier];
    NSMutableArray *tempList= [[DataAccessObject sharedDAO]getPrograms];
    self.programs = [NSMutableArray new];
    for (int i = 0; i < [tempList count]; i++) {
        NYCProgram *tempgram = tempList[i];
        if([tempgram.programType isEqualToString:self.programType]){
            [self.programs addObject:tempgram];
        }
    }

    
    //self.programs =
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
    return [self.programs count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    ProgramCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    NYCProgram *temp = [self.programs objectAtIndex:[indexPath row]];
    cell.borough.text = temp.borough;
    cell.programName.text = temp.programName;
    cell.url.text = temp.URL;
    cell.siteName.text = temp.agency;
    //cell.address.text = temp.address;
    cell.phoneNumber.text = temp.phoneNumber;
    // Configure the cell
    
    return cell;
}

-(void) collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    self.webViewController = [[WebViewController alloc] init];
    NYCProgram *temp = [self.programs objectAtIndex:[indexPath row]];
    self.webViewController.programName = temp.programName;
    self.webViewController.title = temp.programName;
    
    [self.navigationController
     pushViewController:self.webViewController
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
