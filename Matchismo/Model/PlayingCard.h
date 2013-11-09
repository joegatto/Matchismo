//
//  PlayingCard.h
//  Matchismo
//
//  Created by Joao Carlos Lopes Gatto on 10/31/13.
//  Copyright (c) 2013 João Gatto. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger) maxRank;

@end
