//
//  PhotoCollectionViewCell.m
//  InstantKilo
//
//  Created by Alex Wymer  on 2017-07-12.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import "PhotoCollectionViewCell.h"

@implementation PhotoCollectionViewCell



-(void)updateDisplay {
    
    self.imageView.image = self.photograph.photo;
    
}



@end
