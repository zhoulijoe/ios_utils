#import "NSMutableDictionary+ZLIUtils.h"

@implementation NSMutableDictionary (ZLIUtils)

#pragma mark - Public methods

- (void)mergeWithDictionary:(NSDictionary *)dict {
    for (id key in [dict allKeys]) {
        id obj = [self mutableDictionaryCopyIfNeeded:[dict objectForKey:key]];
        id localObj = [self mutableDictionaryCopyIfNeeded:[self objectForKey:key]];
        if ([obj isKindOfClass:[NSDictionary class]] &&
            [localObj isKindOfClass:[NSMutableDictionary class]]) {
            // Recursive merge for NSDictionary
            [localObj mergeWithDictionary:obj];
        } else if (obj) {
            [self setObject:obj forKey:key];
        }
    }
}

#pragma mark - Private methods

/**
 * Check for dictionary class, then create a mutable copy of the dictionary if necessary.
 *
 * @param dictObj Object to check
 *
 * @return Mutable copy of object if it's a dictionary, otherwise return the object a it is.
 */
- (id)mutableDictionaryCopyIfNeeded:(id)dictObj {
    if ([dictObj isKindOfClass:[NSDictionary class]] &&
        ![dictObj isKindOfClass:[NSMutableDictionary class]]) {
        dictObj = [dictObj mutableCopy];
    }

    return dictObj;
}

@end
