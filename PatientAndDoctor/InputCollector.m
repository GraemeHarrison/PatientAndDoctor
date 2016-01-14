//
//  InputCollector.m
//  PatientAndDoctor
//
//  Created by Graeme Harrison on 2016-01-14.
//  Copyright © 2016 Graeme Harrison. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString {
    
    // Show promptString
    NSLog(@"%@", promptString);
    
    // Collect input with fgets / scanf
    char inputChars[255];
    scanf("%s", inputChars);
    
    // Return input as NSString
    NSString *inputString = [[NSString stringWithUTF8String:inputChars] stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    return inputString;
}

@end
