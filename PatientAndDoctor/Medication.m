//
//  Medication.m
//  PatientAndDoctor
//
//  Created by Graeme Harrison on 2016-01-14.
//  Copyright © 2016 Graeme Harrison. All rights reserved.
//

#import "Medication.h"

@implementation Medication

- (instancetype)init
{
    self = [super init];
    if (self) {
        _meds = [[NSDictionary alloc] initWithObjectsAndKeys:@"penicillin", @"infection", @"insulin", @"diabetes", nil];
    }
    return self;
}

@end
