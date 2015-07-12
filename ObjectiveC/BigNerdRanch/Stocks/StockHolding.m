#import "StockHolding.h"

@implementation StockHolding

- (id)initWithPurchaseSharePrice:(float)purchasePrice currentSharePrice:(float)currentPrice numberOfShares:(int)shares {
    self = [super init];

    if (self) {
        self.purchaseSharePrice = purchasePrice;
        self.currentSharePrice = currentPrice;
        self.numberOfShares = shares;
    }

    return self;
}

- (float)costInDollars {
    return self.purchaseSharePrice * self.numberOfShares;
}

- (float)valueInDollars {
    return self.currentSharePrice * self.numberOfShares;
}

@end
