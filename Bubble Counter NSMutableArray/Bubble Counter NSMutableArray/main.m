//
//  main.m
//  Bubble Counter NSMutableArray
//
//  Created by iwill69 on 04/10/2016.
//  Copyright © 2016 IJW. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *myArray =@[@40, @30, @20, @10, @101, @201, @301,@121,@11,@123,@21,@14,@32,@76,@89,@987,@65];
        NSMutableArray *mySortedArray = [NSMutableArray arrayWithArray:myArray];
        NSLog(@"my array %lu", (unsigned long)myArray.count);
//        NSArray *sorted = [myArray sortedArrayUsingSelector:@selector(compare:)];

        BOOL swapped = TRUE;
        while (swapped) {
            swapped = FALSE;
        for (NSUInteger i = 1; i < [mySortedArray count]; i++) {
            int x = [mySortedArray[i-1] intValue];
            int y = [mySortedArray[i]intValue];
            if (x > y) {
                [mySortedArray exchangeObjectAtIndex:(i-1) withObjectAtIndex:i];
                swapped = TRUE;
                    }
                }
       
            }
            NSLog(@"sorted array is %@",mySortedArray);
        }

}

