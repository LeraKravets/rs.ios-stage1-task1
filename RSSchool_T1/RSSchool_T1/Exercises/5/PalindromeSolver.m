#import "PalindromeSolver.h"

@implementation PalindromeSolver

// Complete the highestValuePalindrome function below.
- (NSString *) highestValuePalindrome:(NSString *)s n:(NSNumber *)n k:(NSNumber *)k {

    NSInteger lastIndex = [n intValue] - 1;
    NSInteger score = 0;
    NSInteger stopValue = 0;
    NSString *resultString = @"";

    NSMutableArray *charArray = [NSMutableArray array];

    for (int i = 0; i < [s length]; i++) {
        char ch = [s characterAtIndex:i];
        [charArray addObject: [NSString stringWithFormat:@"%c", ch]];
    }
    NSLog(@"%@", charArray);

    if ([n intValue] % 2 == 0) {
        stopValue = [n intValue] / 2;
    } else {
        stopValue = ([n intValue] - 1) / 2;
    }

    for (int i = 0; i < stopValue; i++) {
        NSString *a = [charArray objectAtIndex: 0 + i];
        NSString *b = [charArray objectAtIndex: lastIndex - i];
        NSInteger aChar = [a intValue];
        NSInteger bChar = [b intValue];
        if (aChar != bChar && aChar > bChar) {
            [charArray replaceObjectAtIndex: lastIndex - i withObject: a];
            score += 1;
        } else if (aChar != bChar && aChar < bChar) {
            [charArray replaceObjectAtIndex: 0 + i withObject: b];
            score += 1;
        }
    }

    if (score <= [k intValue]) {
        while (score <= ([k intValue] - 2)) {
            [charArray replaceObjectAtIndex: lastIndex withObject: @"9"];
            [charArray replaceObjectAtIndex: 0 withObject: @"9"];
            score += 2;
        }
        for (int i = 0; i < [n intValue]; i++) {
            NSString *d = [charArray objectAtIndex:i];
            resultString = [resultString stringByAppendingString:d];
        }

//        NSString *resultString = [NSString stringWithFormat:@"%@", charArray];
////        NSString *resultString = [NSString stringWithCString:charArray encoding:NSASCIIStringEncoding];
////        NSString *resultString = [NSString stringWithUTF8String: charArray];
//        NSLog(@"%@",resultString);

//        NSString *resultString = [charArray componentsJoinedByString:@",\n"];



//        NSString *resultString = [charArray componentsJoinedByString:@"\n "];
//        NSString *resultString = [NSString stringWithFormat:@"%@", charArray];
        NSLog(@"%@",resultString);
        return resultString;
    } else {
        return @"-1";
    }
}

@end
