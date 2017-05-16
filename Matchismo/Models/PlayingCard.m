//
//  PlayingCard.m
//  Matchismo
//
//  Created by Aniket on 15/05/17.
//  Copyright © 2017 Aniket. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

- (NSString *)contents {
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

@synthesize suit = _suit;

- (void)setSuit:(NSString *)suit {
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString *)suit {
    return _suit ? _suit : @"?";
}

+ (NSUInteger)maxRank {
    return [[self rankStrings] count] - 1;
}

+ (NSArray *)validSuits {
    return @[@"♣️", @"♠️", @"♥️", @"♦️"];
}

+ (NSArray *)rankStrings {
    return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6",
             @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

@end
