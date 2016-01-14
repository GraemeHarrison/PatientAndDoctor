//
//  Patient.m
//  PatientAndDoctor
//
//  Created by Graeme Harrison on 2016-01-14.
//  Copyright © 2016 Graeme Harrison. All rights reserved.
//

#import "Patient.h"

@implementation Patient

-(instancetype)initWithName:(NSString *)name Age:(NSString *)age
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
    }
    return self;
}

@end
