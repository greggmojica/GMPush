//
//  GMPush.h
//  InfinityApps
//
//  Created by Gregg Mojica on 7/1/15.
//  Copyright (c) 2015 Gregg Mojica. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Parse/Parse.h>

@interface GMPush : NSObject

-(void)handlePushWithTitle:(NSString *)title;
-(void)handlePushWithTitle:(NSString *)title andUser:(PFUser *)user;

-(void)saveObject:(NSString *)title andTitle:(NSString *)value toClassName(NSString *)className;

-(void)query:(PFQuery *)queryName;

-(void)handlePushWithTitle:(NSString *)title withAlert:(BOOL)showAlert alertText:(NSString *)message;

@end
