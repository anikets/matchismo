//
//  PlayingCard.h
//  Matchismo
//
//  Created by Aniket on 15/05/17.
//  Copyright © 2017 Aniket. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
