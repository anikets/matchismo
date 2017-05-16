//
//  ViewController.m
//  Matchismo
//
//  Created by Aniket on 12/05/17.
//  Copyright © 2017 Aniket. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"
#import "Card.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *labelFlipsCount;
@property (nonatomic) int flipCount;
@property (weak, nonatomic) NSString *currentCardContents;
@end

@implementation ViewController

@synthesize currentCardContents = _currentCardContents;

- (void)setCurrentCardContents:(NSString *)currentCardContents {  // Setter
    _currentCardContents = currentCardContents;
    [_cardButton setTitle:currentCardContents forState:UIControlStateNormal];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    PlayingCardDeck *deck = [[PlayingCardDeck alloc] init];
    Card *card = [deck drawRandomCard];
    self.currentCardContents = card.contents;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setFlipCount:(int)flipCount {
    _flipCount = flipCount;
    _labelFlipsCount.text = [NSString stringWithFormat:@"Flips: %d", flipCount];
}

- (IBAction)touchedCardButton:(id)sender {
    // Flip card
    if ([[sender currentTitle] isEqualToString:@""]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"card-front"]
                          forState:UIControlStateNormal];
        [sender setTitle:_currentCardContents forState:UIControlStateNormal];
    } else {
        [sender setBackgroundImage:[UIImage imageNamed:@"card-back"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }
    self.flipCount++;
}
@end
