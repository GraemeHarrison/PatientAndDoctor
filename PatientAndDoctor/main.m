//
//  main.m
//  PatientAndDoctor
//
//  Created by Graeme Harrison on 2016-01-14.
//  Copyright © 2016 Graeme Harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    
    InputCollector *input = [[InputCollector alloc] init];
    
    Doctor *lenny = [[Doctor alloc] initWithName:@"Lenny" Specialization:@"Proctologist"];
    Doctor *carl = [[Doctor alloc] initWithName:@"Carl" Specialization:@"Neurologist"];
    
    NSString *nameInput = [input inputForPrompt:@"\nHello new patient, please enter your full name.\n"];
    NSString *ageInput = [input inputForPrompt:@"\nThank you, now please enter your age"];
    Patient *user = [[Patient alloc] initWithName:nameInput age:ageInput];
    
    NSString *hasCard = [input inputForPrompt:@"\nThanks. Do you have a health card? Type 'yes' or 'no'\n"];
    
    if ([hasCard isEqualToString:@"yes"]) {
        [user updateHealthCard:user];
        user.hasCard = YES;
        
    } else if ([hasCard isEqualToString:@"no"]) {
        user.hasCard = NO;
        
    } else {
        NSLog(@"Sorry, that is an invalid request.");
    }
    
    NSString *menuInput = [input inputForPrompt:@"\nWhat would you like to do now?\n visit - Visit a Doctor\n exit - Exit program\n"];
    
    if ([menuInput isEqualToString:@"visit"]) {
        NSLog(@"\n%@ - %@ \n%@ - %@", lenny.name, lenny.specialization, carl.name, carl.specialization);
        NSString *doctorName = [input inputForPrompt:@"\nWhich doctor would you like to see?"];
        
        if ([doctorName isEqualToString:@"lenny"]) {
            
            if ([lenny acceptPatient:user]) {
                NSString *symptomInput = [input inputForPrompt:@"\nWhat are your symptoms?\n 1 - infection\n 2 - diabetes\n"];
                
                if ([symptomInput isEqualToString:@"1"]) {
                    user.symptom = @"diabetes";
                    [lenny requestMedication:user];
                    
                } else if ([symptomInput isEqualToString:@"2"]) {
                    user.symptom = @"diabetes";
                    [carl requestMedication:user];

                } else {
                    NSLog(@"Sorry, that is an invalid request.");

                }
                
            } else {
                NSLog(@"Sorry, %@ can't see you because you don't have a health card", user.name);
            }
            
        } else if ([doctorName isEqualToString:@"carl"]) {
            [carl acceptPatient:user];
            
        } else {
            NSLog(@"Sorry, there are no doctors by that name.");
        }
        
    } else if ([menuInput isEqualToString:@"exit"]) {
        return 0;
        
    } else {
        NSLog(@"Sorry, that is an invalid request.");
    }
    
    return 0;
}
