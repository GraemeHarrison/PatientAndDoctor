//
//  Doctor.m
//  PatientAndDoctor
//
//  Created by Graeme Harrison on 2016-01-14.
//  Copyright © 2016 Graeme Harrison. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

- (instancetype)initWithName:(NSString *)name Specialization:(NSString *)specialization
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
    }
    return self;
}

@end
