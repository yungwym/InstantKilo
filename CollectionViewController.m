//
//  CollectionViewController.m
//  InstantKilo
//
//  Created by Alex Wymer  on 2017-07-12.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import "CollectionViewController.h"
#import "Photograph.h"
#import "PhotoCollectionViewCell.h"

@interface CollectionViewController ()

@property (nonatomic) NSArray <Photograph*> *photoArray;

@end

@implementation CollectionViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createImages];
}


#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {

    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return self.photoArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    PhotoCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.photograph = self.photoArray[indexPath.row];
    
    [cell updateDisplay];
    return cell;
}


-(void)createImages {
    
    Photograph *photo1 = [[Photograph alloc] initWithTitle:@"Alfred" andPhoto:[UIImage imageNamed:@"alfred.jpg"] andSubject:@"Cartoon" andLocation:@"Montreal"];
    Photograph *photo2 = [[Photograph alloc] initWithTitle:@"All Times" andPhoto:[UIImage imageNamed:@"alltimes.jpg"] andSubject:@"Cartoon" andLocation:@"Toronto"];
    Photograph *photo3 = [[Photograph alloc] initWithTitle:@"A Boogie" andPhoto:[UIImage imageNamed:@"boogie.jpg"] andSubject:@"People" andLocation:@"New York"];
    Photograph *photo4 = [[Photograph alloc] initWithTitle:@"Crew" andPhoto:[UIImage imageNamed:@"boogie2.jpg"] andSubject:@"People" andLocation:@"New York"];
    Photograph *photo5 = [[Photograph alloc] initWithTitle:@"Gucci" andPhoto:[UIImage imageNamed:@"gucci2.jpg"] andSubject:@"Pattern" andLocation:@"Montreal"];
    Photograph *photo6 = [[Photograph alloc] initWithTitle:@"MF Ironman" andPhoto:[UIImage imageNamed:@"mfironman.jpg"] andSubject:@"Cartoon" andLocation:@"Toronto"];
    Photograph *photo7 = [[Photograph alloc] initWithTitle:@"Pope" andPhoto:[UIImage imageNamed:@"pope.jpg"] andSubject:@"People" andLocation:@"New York"];
    Photograph *photo8 = [[Photograph alloc] initWithTitle:@"Sailing Team" andPhoto:[UIImage imageNamed:@"Sailingteam.jpg"] andSubject:@"Cartoon" andLocation:@"Toronto"];
    Photograph *photo9 = [[Photograph alloc] initWithTitle:@"Louie V" andPhoto:[UIImage imageNamed:@"louieV2.jpg"] andSubject:@"Pattern" andLocation:@"Toronto"];
    Photograph *photo10 = [[Photograph alloc] initWithTitle:@"Yachty Sponge" andPhoto:[UIImage imageNamed:@"sponge.jpg"] andSubject:@"Cartoon" andLocation:@"Montreal"];
    
    self.photoArray = @[ photo1, photo2, photo3, photo4, photo5, photo6, photo7, photo8, photo9, photo10];
    
}

@end
