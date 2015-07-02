//
//  GMPush.m
//  InfinityApps
//
//  Created by Gregg Mojica on 7/1/15.
//  Copyright (c) 2015 Gregg Mojica. All rights reserved.
//

#import "GMPush.h"

@implementation GMPush


-(void)handlePushWithTitle:(NSString *)title {
    PFQuery *pushQuery = [PFInstallation query];
    [pushQuery whereKey:@"deviceType" equalTo:@"ios"];
    
    if (title == nil) {
        NSLog(@"No title Selected");
    } else {
        [PFPush sendPushMessageToQueryInBackground:pushQuery
                                       withMessage:[NSString stringWithFormat:@"%@", title]];
        NSLog(@"Push Successfully Sent");
    }
    
}

-(void)handlePushWithTitle:(NSString *)title andUser:(PFUser *)user {
    PFQuery *pushQuery = [PFInstallation query];
    [pushQuery whereKey:@"deviceType" equalTo:@"ios"];
    
    if (!user || !title) {
        NSLog(@"Missing User or Title");
        
    } else {
        [PFPush sendPushMessageToQueryInBackground:pushQuery
                                       withMessage:[NSString stringWithFormat:@"%@ Sent %@", user, title]];
        
        NSLog(@"Push Succeded");
    }
}

-(void)handlePushWithTitle:(NSString *)title withAlert:(BOOL)showAlert alertText:(NSString *)message {
    
    PFQuery *pushQuery = [PFInstallation query];
    [self query:pushQuery];
    
    [PFPush sendPushMessageToQueryInBackground:pushQuery
                                   withMessage:[NSString stringWithFormat:@"%@", title]];

    if (showAlert == YES) {
        if (message == nil) {
            UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Success" message:message delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [alert show];
        } else {
            UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Success" message:@"You have successfully send out the push notification" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [alert show];
        }
    }
}

-(void)saveObject:(NSString *)title andTitle:(NSString *)value toClassName(NSString *)className {
    
    if (className == nil) {
        NSLog(@"No Class Name Selected");
    }
    
    if (title == nil) {
        NSLog(@"No Title Selected");
    }
    
    if (value == nil) {
        NSLog(@"No Value Selected");
    }
        
    PFObject *object = [PFObject objectWithClassName:className];
    [object setObject:[NSString stringWithFormat:@"%@ updated %@", user, title] forKey:@"ChangesDescription"];
    [object saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (succeeded) {
            NSLog(@"PFObject Succeded");
        } if (error) {
            NSLog(@"An Error Occurred %@", error);
        }
    }];
    
    return YES;
}

-(void)query:(PFQuery *)queryName {
    
    return [queryName whereKey:@"deviceType" equalTo:@"ios"];
}


@end
