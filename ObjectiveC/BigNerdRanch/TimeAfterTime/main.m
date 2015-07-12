#import <Foundation/Foundation.h>

int main(int charc, const char *argv[]) {
    @autoreleasepool {
        NSDate *now = [NSDate date];
        NSLog(@"The new date lives at %p", now);
        NSLog(@"The date is %@", now);
    }

    return 0;
}
