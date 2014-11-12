#import <DDASLLogger.h>
#import <DDTTYLogger.h>

#import "ZLILogger.h"

const int ddLogLevel = LOG_LEVEL_VERBOSE;

@implementation ZLILogger

+ (void)attachLogger {
    [DDLog addLogger:[DDASLLogger sharedInstance]];
    [DDLog addLogger:[DDTTYLogger sharedInstance]];
}

@end