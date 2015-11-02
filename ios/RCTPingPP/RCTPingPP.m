//
//  RCTPingPP.m
//  RCTPingPP
//
//  Created by Yorkie Liu on 10/31/15.
//  Copyright © 2015 WeFlex. All rights reserved.
//

#import "RCTPingPP.h"
#import "Base/RCTLog.h"
#import "Pingpp.h"

@implementation RCTPingPP

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(setDebugMode:(BOOL)enabled
                  :(RCTResponseSenderBlock)callback)
{
    [Pingpp setDebugMode:enabled];
    callback(@[[NSNull null]]);
}

RCT_EXPORT_METHOD(handleOpenURLInIOS8:(NSURL *)url
                  :(RCTResponseSenderBlock)callback)
{
    [Pingpp handleOpenURL:url withCompletion:^(NSString *result, PingppError *error) {
        callback(@[@(error.code), result]);
    }];
}

RCT_EXPORT_METHOD(handleOpenURLInIOS9:(NSURL *)url
                  :(NSString *)sourceApplication
                  :(RCTResponseSenderBlock)callback)
{
    [Pingpp handleOpenURL:url sourceApplication:sourceApplication withCompletion:^(NSString *result, PingppError *error) {
        callback(@[@(error.code), result]);
    }];
}

RCT_EXPORT_METHOD(createPayment:(NSDictionary *)charge
                  :(NSString *)schema
                  :(RCTResponseSenderBlock)callback)
{
    [Pingpp createPayment:charge appURLScheme:schema withCompletion:^(NSString *result, PingppError *error) {
        callback(@[@(error.code), result]);
    }];
}

@end
