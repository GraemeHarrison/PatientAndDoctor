//
//  Patient.h
//  PatientAndDoctor
//
//  Created by Graeme Harrison on 2016-01-14.
//  Copyright © 2016 Graeme Harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"

@interface Patient : NSObject

@property (nonatomic, strong) NSString *age;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *healthCard;
@property (nonatomic, strong) NSString *symptom;
//@property (nonatomic, strong) NSString *prescription;
@property BOOL hasCard;

-(instancetype)initWithName:(NSString *)name age:(NSString *)age;

-(void)updateHealthCard:(Patient *)patient;

//-(void)visitDoc:(Doctor *)doc;

@end
