#import "ZLINetworkErrorFactory.h"

NSString *const ZLINetworkErrorDomain = @"com.locationlabs.ZLINetworkErrorDomain";

@implementation ZLINetworkErrorFactory

+ (NSString *)domain {
    return ZLINetworkErrorDomain;
}

@end
