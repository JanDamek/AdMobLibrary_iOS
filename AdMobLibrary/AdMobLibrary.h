//
//  AdMobLibrary.h
//  AdMobLibrary
//
//  Created by Jan Damek on 24.12.13.
//  Copyright (c) 2013 Jan Damek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GADBannerView.h"

@interface AdMobLibrary : NSObject

@property (nonatomic, strong) NSString *AdMob_id;

-(UIView*) getBannerView:(GADAdSize) size;

@end
