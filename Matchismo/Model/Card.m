//
//  Card.m
//  Matchismo
//
//  Created by Joao Carlos Lopes Gatto on 10/31/13.
//  Copyright (c) 2013 João Gatto. All rights reserved.
//

#import "Card.h"

@interface Card()

@end

@implementation Card

- (int) match:(NSArray *)otherCards {
    int score = 0;
    
    for (Card *card in otherCards) {
        if([card.contents isEqualToString:self.contents]){
            score = 1;
        }
    }
    
    return score;
}

@end
