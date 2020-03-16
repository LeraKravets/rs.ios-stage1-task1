#import "T1Array.h"

@implementation T1Array

// Complete the following fuction
- (NSArray *)convertToHappy:(NSArray *)sadArray {
    NSMutableArray *result = [[NSMutableArray alloc] init];
    result = [sadArray mutableCopy];
//    for (int i = 1; i < result.count; i++) {
//        if ([result[i] intValue] > [result[i-1] intValue] + [result[i+1] intValue]) {
//            [result removeObjectAtIndex: i];
//        }
//    }



//    NSMutableArray *result = [[NSMutableArray alloc] init];
//    for (int i = 1; i < sadArray.count; i++) {
//        while ([sadArray[i] intValue] > [sadArray[i-1] intValue] + [sadArray[i+1] intValue]) {
//            [sadArray removeObjectAtIndex:i];
//        }
//    }
    return result;
//    [happyArray release];
}

@end
