//
//  PDPatch.m
//  MyPDProject
//
//  Created by kztskawamu on 2015/07/10.
//  Copyright (c) 2015年 cazcawa. All rights reserved.
//

#import "PDPatch.h"

@implementation PDPatch

-(void)onOff:(BOOL)yesNo{
    float yn = (float)yesNo;
    [PdBase sendFloat:yn toReceiver:@"onOff"];
}

-(instancetype)initWithFile:(NSString *)pdFile{
    void *patch;
    self = [super init];
    if (self) {
        //Init code
        patch = [PdBase openFile:pdFile path:[[NSBundle mainBundle]resourcePath]];
        if (!patch) {
            UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Uh-oh" message:@"Pd Patch not found" delegate:self cancelButtonTitle:@"Crap" otherButtonTitles:nil, nil];
            [alert show];
        }
    }
    return self;
}

@end
