//
//  ViewController.h
//  Matchismo
//
//  Created by Aniket on 12/05/17.
//  Copyright © 2017 Aniket. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *cardButton;
- (IBAction)touchedCardButton:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *clickCountLabel;

@end

