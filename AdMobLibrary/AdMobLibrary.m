//
//  AdMobLibrary.m
//  AdMobLibrary
//
//  Created by Jan Damek on 24.12.13.
//  Copyright (c) 2013 Jan Damek. All rights reserved.
//

#import "AdMobLibrary.h"

@implementation AdMobLibrary

@synthesize AdMob_id = _AdMob_id;

-(UIView*) getBannerView:(GADAdSize) size{
    
    GADBannerView *bv = nil;
    
    if ([_AdMob_id isEqualToString:@""]) {
        [NSException raise:@"AdMobil ID not set" format:@"AdMob_id mus be set."];
    } else {
        bv = [[GADBannerView alloc] initWithAdSize:size];
        bv.adUnitID = _AdMob_id;
        [bv loadRequest:[GADRequest request]];
    }
    
    UIView *v = [[UIView alloc] initWithFrame:CGRectMake(bv.frame.origin.x, bv.frame.origin.y, bv.frame.size.width, bv.frame.size.height)];
    [v addSubview:bv];
    
    return v;
}

@end
