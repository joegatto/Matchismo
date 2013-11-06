//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Joao Carlos Lopes Gatto on 10/30/13.
//  Copyright (c) 2013 João Gatto. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (strong , nonatomic) Deck *deck;
@property (nonatomic) int flipCount;
@end

@implementation CardGameViewController

-(Deck *) deck {
    if(!_deck) _deck = [self createDeck];
    return _deck;
}

-(Deck *) createDeck {
    return [[PlayingCardDeck alloc] init];
}

-(void) setFlipCount:(int)flipCount {
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"Flip count changed to %d", self.flipCount);
}

- (IBAction)touchCardButton:(UIButton *)sender {
    if([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"CardBack"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
        self.flipCount++;
    } else {
        Card *card = [self.deck drawRandomCard];
        if(card) {
            [sender setBackgroundImage:[UIImage imageNamed:@"CardFront"]
                              forState:UIControlStateNormal];
            [sender setTitle:card.contents forState:UIControlStateNormal];
            self.flipCount++;
        }
    }
}

@end
