//
//  Doctor.h
//  PatientAndDoctor
//
//  Created by Graeme Harrison on 2016-01-14.
//  Copyright © 2016 Graeme Harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Medication.h"

@class Patient;

@interface Doctor : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *specialization;
@property (nonatomic, strong) NSMutableArray *patients;
@property (nonatomic, strong) NSMutableDictionary *prescriptions;

-(instancetype)initWithName:(NSString *)name Specialization:(NSString *)specialization;

-(BOOL)acceptPatient:(Patient *)patient;

-(void)requestMedication:(Patient *)patient;

@end
