#import <Foundation/Foundation.h>

int main(int charc, const char *argv[]) {
    @autoreleasepool {
        NSTimeZone *timeZone = [NSTimeZone systemTimeZone];
        NSLog(@"It is currently %s daylight savings time.", [timeZone isDaylightSavingTime] ? "NOT" : "");
    }
    return 0;
}
