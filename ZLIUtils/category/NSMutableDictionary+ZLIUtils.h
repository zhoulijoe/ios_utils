@interface NSMutableDictionary (ZLIUtils)

/**
 * Recursively merge entries from given dictionary. Value in current dictionary will be overridden
 * with value in specified dictionary for the same key.
 *
 * @param dict Dictionary to be merged with
 */
- (void)mergeWithDictionary:(NSDictionary *)dict;

@end
