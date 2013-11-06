//
//  Card.h
//  Matchismo
//
//  Created by Joao Carlos Lopes Gatto on 10/31/13.
//  Copyright (c) 2013 João Gatto. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter = isMatched) BOOL matched;

- (int) match:(NSArray *)otherCards;

@end
