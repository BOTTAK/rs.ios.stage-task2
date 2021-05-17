#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    NSInteger counter = 0;
    
    for (int a = 0; a < array.count; a++) {
        
        for (int m = a + 1; m < array.count; m++) {
            
            if (ABS(array[a].intValue - array[m].intValue) == number.intValue ) {
                counter++;
            }
        }
    }
    
    return counter;
}

@end
