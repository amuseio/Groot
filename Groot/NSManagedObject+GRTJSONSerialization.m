// Created 2018-03-15.

#import "NSManagedObject+GRTJSONSerialization.h"
#import "NSManagedObject+Groot.h"

@implementation NSManagedObject (GRTJSONSerialization)

- (BOOL)grt_populateWithDictionary:(NSDictionary<NSString *,id> *)dictionary
{
    NSError *error = nil;
    [self grt_serializeJSONDictionary:dictionary mergeChanges:NO error:&error];

    if (error)
    {
        NSLog(@"Serialization error: %@", error);
        return NO;
    }

    return YES;
}

@end
