//
//  Patient.h
//  PatientAndDoctor
//
//  Created by Graeme Harrison on 2016-01-14.
//  Copyright © 2016 Graeme Harrison. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Patient : NSObject

@property (nonatomic, strong) NSString *age;
@property (nonatomic, strong) NSString *name;

-(instancetype)initWithName:(NSString *)name Age:(NSString *)age;

@end
