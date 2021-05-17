#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    
    if (!numbersArray || numbersArray.count == 0) {
           return @"";
       }
       
       NSDictionary *invalidNumber = @{@"invalidValue": @"Numbers can only be in the range 0 to 255",
                                       @"negativeValue": @"The main number of matching cannot"};
       
       NSMutableString *address = [[NSMutableString alloc] init];
       
       for (NSInteger i = 0; i < 4; i++) {
           NSInteger nextIpAddress = 0;
           if (i < numbersArray.count) {
               nextIpAddress = [numbersArray[i] intValue];
           }
           if (nextIpAddress > 255) {
               return invalidNumber[@"invalidValue"];
           } else if (nextIpAddress < 0) {
               return invalidNumber[@"negativeValue"];
           } else {
               [address appendFormat:@"%ld.", nextIpAddress];
           }
       }
       
       return [address substringToIndex:[address length] - 1];
}

@end
