//
//  MPLogging.m
//
//  Copyright 2018-2019 Twitter, Inc.
//  Licensed under the MoPub SDK License Agreement
//  http://www.mopub.com/legal/sdk-license-agreement/
//

#import "MPLogging.h"
#import "MPLogManager.h"

NSString * const kMPClearErrorLogFormatWithAdUnitID = @"No ads found for ad unit: %@";
NSString * const kMPWarmingUpErrorLogFormatWithAdUnitID = @"Ad unit %@ is currently warming up. Please try again in a few minutes.";

@implementation MPLogging

#pragma mark - Class Properties

+ (MPLogLevel)consoleLogLevel {
    return MPLogManager.sharedInstance.consoleLogLevel;
}

+ (void)setConsoleLogLevel:(MPLogLevel)level {
    MPLogManager.sharedInstance.consoleLogLevel = level;
}

#pragma mark - Class Methods

+ (void)addLogger:(id<MPLogger>)logger {
    [MPLogManager.sharedInstance addLogger:logger];
}

+ (void)removeLogger:(id<MPLogger>)logger {
    [MPLogManager.sharedInstance removeLogger:logger];
}

+ (void)logEvent:(MPLogEvent *)event source:(NSString *)source fromClass:(Class)aClass {
    [MPLogManager.sharedInstance logEvent:event source:source fromClass:NSStringFromClass(aClass)];
}

@end
