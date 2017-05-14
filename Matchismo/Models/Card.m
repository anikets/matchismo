//
//  Card.m
//  Matchismo
//
//  Created by Aniket on 15/05/17.
//  Copyright © 2017 Aniket. All rights reserved.
//

#import "Card.h"

@implementation Card

//@synthesize contents = _contents;
//
//- (NSString *)contents {
//    return _contents;
//}
//
//- (void)setContents:(NSString *)contents {
//    _contents = contents;
//}

-(int)match:(NSArray *)otherCards {
    int score = 0;
    
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    return score;
}

@end
