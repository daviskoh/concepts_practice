#import <Foundation/Foundation.h>
#import "StockHolding.m"

int main(int charc, const char *argv[]) {
    @autoreleasepool {
        StockHolding *holding1 = [[StockHolding alloc] initWithPurchaseSharePrice: 2.5
                                                               currentSharePrice: 2.7
                                                                  numberOfShares: 5];      

        StockHolding *holding2 = [[StockHolding alloc] initWithPurchaseSharePrice: 2.5
                                                               currentSharePrice: 2.7
                                                                  numberOfShares: 5];      

        StockHolding *holding3 = [[StockHolding alloc] initWithPurchaseSharePrice: 2.5
                                                               currentSharePrice: 2.7
                                                                  numberOfShares: 5];

        NSArray *holdings = @[holding1, holding2, holding3];

        for (StockHolding *holding in holdings) {
            NSLog(@"purchase: %.2f, current: %.2f, shares: %d", holding.purchaseSharePrice, holding.currentSharePrice, holding.numberOfShares);
        }
    }

    return 0;
}
