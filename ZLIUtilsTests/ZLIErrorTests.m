#import "ZLINetworkErrorFactory.h"
#import "Kiwi.h"

SPEC_BEGIN(Error)

describe(@"Errors", ^{
    context(@"Network error factory", ^{
        it(@"create error with correct domain", ^{
            NSError *networkError = [ZLINetworkErrorFactory errorWithErrorCode:ZLINetworkTimeout];
            [[networkError.domain should] equal:ZLINetworkErrorDomain];
            [[theValue(networkError.code) should] equal:theValue(ZLINetworkTimeout)];
        });
    });
});

SPEC_END
