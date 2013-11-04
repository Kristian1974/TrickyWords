//
//  AllWordsViewController.m
//  TrickyWords
//
//  Created by Kristian Mills on 30/10/2013.
//  Copyright (c) 2013 Kristian Mills. All rights reserved.
//

#import "AllWordsViewController.h"

@interface AllWordsViewController ()

@end

@implementation AllWordsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    allWordsTextArray = [NSMutableArray arrayWithObjects:
                         @"the", @"and", @"a", @"to", @"I",
                         @"look", @"come", @"in", @"is", @"it",
                         @"can", @"home", @"we", @"mum", @"dad",
                         @"you", @"stop", @"no", @"here", @"not",
                         @"help", @"yes", @"go", @"off", @"now", nil];
    
    [self allWordsCorrectButton:self];
    allWordsCorrectAnswers = 0;
    allWordsIncorrectAnswers = 0;
   
    
     }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)allWordsPresentWordstoScreen {
    
       if ([allWordsTextArray count] > 0){
    
        allWordsRandomNumber = arc4random()%[allWordsTextArray count];
        allWordsrandomText = [allWordsTextArray objectAtIndex:allWordsRandomNumber];
        _allWordsShowWord.text = allWordsrandomText;
        [allWordsTextArray removeObjectAtIndex:allWordsRandomNumber];
        
    } else
    {
        // show result screen
        
        [self showAlert];
        
        NSLog(@"Correct: %d\n", allWordsCorrectAnswers);
        NSLog(@"Incorrect: %d\n", allWordsIncorrectAnswers);
    }
}
- (IBAction)allWordsCorrectButton:(id)sender {
    
     [self allWordsPresentWordstoScreen];
    allWordsCorrectAnswers ++;
    
    //play congrats sound
    
    
}

- (IBAction)allWordsIncorrectButton:(id)sender {
    
    [self allWordsPresentWordstoScreen];
    allWordsIncorrectAnswers ++;
    
    //play bad luck sound
    }

- (void)showAlert {
    
    int finalScore;
    finalScore = allWordsCorrectAnswers;
    
    NSString *title = [NSString stringWithFormat:@"You scored %d/25", finalScore];
    
    NSString *finalScoreMessage;
    if (finalScore < 7){
        finalScoreMessage = @"Oops, you need much more practice";
    }else if (finalScore <15){
        finalScoreMessage = @"Keep working at it";
    }else if (finalScore < 20){
        finalScoreMessage = @"Good Effort - a few words to practice";
    }else if (finalScore < 25){
        finalScoreMessage = @"Excellent Effort - nearly perfect";
    }else if (finalScore == 25){
        finalScoreMessage = @"Perfect Score!! - ready for next list";
    }
    
    UIAlertView *finalScoreView = [[UIAlertView alloc] initWithTitle:title
        message:finalScoreMessage
        delegate:self
        cancelButtonTitle:@"OK"
        otherButtonTitles:nil];
    [finalScoreView show]; }

- (void)alertView:(UIAlertView *)finalScoreView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    [self startNewRound];
    
}

- (void)startNewRound
{
    NSLog(@"starting new round");
}

@end
