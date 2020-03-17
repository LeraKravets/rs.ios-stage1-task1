#import "MiniMaxArrayConverter.h"

@implementation MiniMaxArrayConverter

// Complete the convertFromArray function below.
- (NSArray<NSNumber*>*)convertFromArray:(NSArray<NSNumber*>*)array {
    NSArray* myArray = [array sortedArrayUsingComparator:^NSComparisonResult(id a, id b) {
      if ([a integerValue] > [b integerValue]) {
        return (NSComparisonResult)NSOrderedDescending;
      }

      if ([a integerValue] < [b integerValue]) {
        return (NSComparisonResult)NSOrderedAscending;
      }
      return (NSComparisonResult)NSOrderedSame;
    }];

    int min = 0;
    for (int i = 0; i < myArray.count - 1; i++) {
        min = min + [myArray[i] intValue];
    }

    int max = 0;
    for (int i = 1; i < myArray.count; i++) {
        max = max + [myArray[i] intValue];
    }

    NSMutableArray* result = [[NSMutableArray alloc] init];
    [result addObject:[NSNumber numberWithInt:((int)min)]];
    [result addObject:[NSNumber numberWithInt:((int)max)]];

    return result;
}
@end
