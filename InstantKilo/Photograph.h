//
//  Photograph.h
//  InstantKilo
//
//  Created by Alex Wymer  on 2017-07-12.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"

@interface Photograph : NSObject

@property (nonatomic) NSString *photoTitle;
@property (nonatomic) UIImage *photo;
@property (nonatomic) NSString *subject;
@property (nonatomic) NSString *location;

- (instancetype)initWithTitle:(NSString *)photoTitle andPhoto:(UIImage *)photo andSubject:(NSString *)subject andLocation:(NSString *)location;



@end
