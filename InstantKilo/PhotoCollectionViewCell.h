//
//  PhotoCollectionViewCell.h
//  InstantKilo
//
//  Created by Alex Wymer  on 2017-07-12.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Photograph.h"

@interface PhotoCollectionViewCell : UICollectionViewCell

@property (nonatomic) Photograph *photograph;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

-(void)updateDisplay;

@end
