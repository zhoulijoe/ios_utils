#import "ZLIErrorFactory.h"

extern NSString *const ZLINetworkErrorDomain;

typedef NS_ENUM(NSUInteger, ZLINetworkErrorCode) {
    ZLINetworkTimeout,
    ZLINetworkUnavailable
};

@interface ZLINetworkErrorFactory : ZLIErrorFactory

@end
