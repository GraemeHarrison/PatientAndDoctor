//
//  Patient.m
//  PatientAndDoctor
//
//  Created by Graeme Harrison on 2016-01-14.
//  Copyright © 2016 Graeme Harrison. All rights reserved.
//

#import "Patient.h"

@implementation Patient

-(instancetype)initWithName:(NSString *)name age:(NSString *)age
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
    }
    return self;
}

-(void)updateHealthCard:(Patient *)patient {
    self.name = patient.name;
    self.age = patient.age;
}

//-(void)visitDoc:(Doctor *)doc {
//    NSLog(@"Patient %@ is attempting to visit Doctor %@", self.name, doc.name);
//}


@end
