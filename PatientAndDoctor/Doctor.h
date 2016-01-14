//
//  Doctor.h
//  PatientAndDoctor
//
//  Created by Graeme Harrison on 2016-01-14.
//  Copyright © 2016 Graeme Harrison. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Doctor : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *specialization;

-(instancetype)initWithName:(NSString *)name Specialization:(NSString *)specialization;

@end
