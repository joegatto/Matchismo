//
//  Deck.h
//  Matchismo
//
//  Created by Joao Carlos Lopes Gatto on 10/31/13.
//  Copyright (c) 2013 João Gatto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject
- (void)addCard:(Card *)card atTop:(BOOL)atTOP;
- (void)addCard:(Card *)card;
- (Card *)drawRandomCard;
@end
