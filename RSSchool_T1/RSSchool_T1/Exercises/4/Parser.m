#import "Parser.h"

@implementation Parser

// Complete the parseString function below.
- (NSArray <NSString*>*)parseString:(NSString*)string {

    NSMutableArray *stringArray = [NSMutableArray array];
    NSMutableArray *resultArray = [NSMutableArray array];

    for (int i = 0; i < [string length]; i++) {
        char s = [string characterAtIndex:i];
        [stringArray addObject:[NSString stringWithFormat: @"%c", s]];
    }

    for (int i = 0; i < stringArray.count; i++) {
        if ([stringArray[i]  isEqual: @"["]) {
            NSArray *partArray = [stringArray subarrayWithRange:NSMakeRange(i, stringArray.count - i)];
            for (int index = 0; index < partArray.count; index++) {
                if ([partArray[index]  isEqual: @"]"]) {
                    if (i + 1 < index + i) {
                        NSArray *substringArray = [stringArray subarrayWithRange:NSMakeRange(i + 1, index - 1)];
                        [resultArray addObject: [substringArray componentsJoinedByString: @""]];
                    }
                }
            }
        } else if ([stringArray[i]  isEqual: @"("]) {
            NSArray *partArray = [stringArray subarrayWithRange:NSMakeRange(i, stringArray.count - i)];
            for (int index = 0; index < partArray.count; index++) {
                if ([partArray[index]  isEqual: @")"]) {

                    if (i + 1 < index + i) {
                        NSArray *substringArray = [stringArray subarrayWithRange:NSMakeRange(i + 1, index - 1)];
                        if ([substringArray containsObject: (@"(")]) {
                            break;
                        } else {
                            [resultArray addObject: [substringArray componentsJoinedByString: @""]];
                        }
                    }
                }
            }
        } else if ([stringArray[i]  isEqual: @"<"]) {
            NSArray *partArray = [stringArray subarrayWithRange:NSMakeRange(i, stringArray.count - i)];
            for (int index = 0; index < partArray.count; index++) {
                if ([partArray[index]  isEqual: @">"]) {
                    if (i + 1 < index + i) {
                        NSArray *substringArray = [stringArray subarrayWithRange:NSMakeRange(i + 1, index - 1)];
                        [resultArray addObject: [substringArray componentsJoinedByString: @""]];
                    }
                }
            }
        }
    }
    return resultArray;
}
@end
