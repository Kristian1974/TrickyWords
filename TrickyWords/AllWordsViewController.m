//
//  AllWordsViewController.m
//  TrickyWords
//
//  Created by Kristian Mills on 30/10/2013.
//  Copyright (c) 2013 Kristian Mills. All rights reserved.
//

#import "AllWordsViewController.h"
#import "TWViewController.h"

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
    
    [self startNewAllWordsRound];
    
    //[self allWordsCorrectButton:self];
    allWordsCorrectAnswers = 0;
    allWordsIncorrectAnswers = 0;
    
}

- (void)startNewAllWordsRound{
    NSLog(@"starting new all words round");
    [self allWordsPresentWordstoScreen];
    
}

-(void)updateScore{
    NSLog(@"score updated");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
  
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
        cancelButtonTitle:@"Main Menu"
        otherButtonTitles:@"Play Again", nil];
    [finalScoreView show]; }

/*- (void)alertView:(UIAlertView *)finalScoreView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    [self returnToMainMenu];
    
}*/

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSString *title = [alertView buttonTitleAtIndex:buttonIndex];
    if([title isEqualToString:@"Main Menu"])
    {
        NSLog(@"Main Menu Button was selected.");
        [self returnToMainMenu];
    }
    else if([title isEqualToString:@"Play Again"])
    {
        NSLog(@"Start New All Words Round Button was selected.");
        [self startNewAllWordsRound];
    }
}


- (void)returnToMainMenu
{
        NSLog(@"returning to Main Menu");
    [self performSegueWithIdentifier:@"MainMenuSegueAllWords" sender:self];
    }



@end
