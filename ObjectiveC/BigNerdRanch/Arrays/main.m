#import <Foundation/Foundation.h>

int main(int charc, const char *argv[]) {
    @autoreleasepool {
        NSArray *things = @[@"meow", @"foo", @"boo"];

        for (NSString *string in things) {
            NSLog(@"%@", string);
        }
    }
    return 0;
}
