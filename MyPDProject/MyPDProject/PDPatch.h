//
//  PDPatch.h
//  MyPDProject
//
//  Created by kztskawamu on 2015/07/10.
//  Copyright (c) 2015年 cazcawa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "PdDispatcher.h"

@interface PDPatch : NSObject

-(void)onOff:(BOOL)yesNo;
-(instancetype)initWithFile:(NSString *)pdFile;

@end
