//
//  Photograph.m
//  InstantKilo
//
//  Created by Alex Wymer  on 2017-07-12.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import "Photograph.h"

@implementation Photograph

- (instancetype)initWithTitle:(NSString *)photoTitle andPhoto:(UIImage *)photo andSubject:(NSString *)subject andLocation:(NSString *)location
{
    self = [super init];
    if (self) {
        
        _photoTitle = photoTitle;
        _photo = photo;
        _subject = subject;
        _location = location;
        
    }
    return self;
}


@end
