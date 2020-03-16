#import "BillCounter.h"

@implementation BillCounter

// Complete the following fuction
- (NSString*)compareResultForBill:(NSArray<NSNumber*>*)bill notIncludingElementWithIndex:(NSInteger)index withGivenSum:(NSNumber*)sum {
    NSMutableArray *resultBill = [bill mutableCopy];
    [resultBill removeObjectAtIndex: index];

    int i, resultSum, value;
       resultSum = 0;
       value = 0;

       for (i = 0; i < [resultBill count]; i++) {
           value = [[resultBill objectAtIndex: i] intValue];
           resultSum += value;
       }

    resultSum = resultSum / 2;

    if (resultSum != [sum intValue]) {
        resultSum = [sum intValue] - resultSum;
        NSLog(@"%d", resultSum);
        NSString* myNewString = [NSString stringWithFormat:@"%i", resultSum];
        return myNewString;
    } else {
        return @"Bon Appetit";
    }
}
@end
