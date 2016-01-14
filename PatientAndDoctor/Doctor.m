//
//  Doctor.m
//  PatientAndDoctor
//
//  Created by Graeme Harrison on 2016-01-14.
//  Copyright © 2016 Graeme Harrison. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor

- (instancetype)initWithName:(NSString *)name Specialization:(NSString *)specialization
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
        _patients = [[NSMutableArray alloc] init];
        _prescriptions = [[NSMutableDictionary alloc] init];
    }
    return self;
}

-(BOOL)acceptPatient:(Patient *)patient {
    
    if (patient.hasCard) {
        [self.patients addObject:patient];
        return YES;
    } else {
        return NO;
    }
}

-(void)requestMedication:(Patient *)patient {
    Medication *medication = [[Medication alloc] init];
    
    NSString *med = [medication.meds objectForKey:patient.symptom];
    [self.prescriptions setObject:med forKey:patient.name];
    
    NSLog(@"\nSounds like you need some %@", med);
    
}


@end
