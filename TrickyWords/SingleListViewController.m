//
//  SingleListViewController.m
//  TrickyWords
//
//  Created by Kristian Mills on 30/10/2013.
//  Copyright (c) 2013 Kristian Mills. All rights reserved.
//

#import "SingleListViewController.h"

@interface SingleListViewController ()

@end

@implementation SingleListViewController

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
	// Do any additional setup after loading the view
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

-(void)list1Selected{
    
    singleListTextArray1 = [NSMutableArray arrayWithObjects:
                         @"the", @"and", @"a", @"to", @"I", nil];
    
    singleListCorrectAnswers = 0;
    singleListIncorrectAnswers = 0;    
    [self list1PresentWordstoScreen];
}

-(void)list2Selected{
    
    singleListTextArray2 = [NSMutableArray arrayWithObjects:
                         @"look", @"come", @"in", @"is", @"it", nil];
    
    singleListCorrectAnswers = 0;
    singleListIncorrectAnswers = 0;
    [self list2PresentWordstoScreen];
}

-(void)list3Selected{
    
    singleListTextArray3 = [NSMutableArray arrayWithObjects:
                         @"can", @"home", @"we", @"mum", @"dad", nil];
    
    singleListCorrectAnswers = 0;
    singleListIncorrectAnswers = 0;
    [self list3PresentWordstoScreen];
}

-(void)list4Selected{
    
    singleListTextArray4 = [NSMutableArray arrayWithObjects:
                         @"you", @"stop", @"no", @"here", @"not", nil];
    
    singleListCorrectAnswers = 0;
    singleListIncorrectAnswers = 0;
    [self list4PresentWordstoScreen];
}

-(void)list5Selected{
    
    singleListTextArray5 = [NSMutableArray arrayWithObjects:
                         @"help", @"yes", @"go", @"off", @"now", nil];
    
    singleListCorrectAnswers = 0;
    singleListIncorrectAnswers = 0;
    [self list5PresentWordstoScreen];
}

-(void)list6Selected{
    
    singleListTextArray6 = [NSMutableArray arrayWithObjects:
                            @"see", @"like", @"where", @"he", @"my", nil];
    
    singleListCorrectAnswers = 0;
    singleListIncorrectAnswers = 0;
    [self list6PresentWordstoScreen];
}


//List 1
- (void)list1PresentWordstoScreen {
    
    if ([singleListTextArray1 count] > 0){
        
        list1RandomNumber = arc4random()%[singleListTextArray1 count];
        singleListrandomText1 = [singleListTextArray1 objectAtIndex:list1RandomNumber];
        _singleListShowWord.text = singleListrandomText1;
        [singleListTextArray1 removeObjectAtIndex:list1RandomNumber];
        
    } else
    {
        // show result screen
        
        [self showAlert];
        
        NSLog(@"Correct: %d\n", singleListCorrectAnswers);
        NSLog(@"Incorrect: %d\n", singleListIncorrectAnswers);
    }
}

//List 2
- (void)list2PresentWordstoScreen {
    
    if ([singleListTextArray2 count] > 0){
        
        list2RandomNumber = arc4random()%[singleListTextArray2 count];
        singleListrandomText2 = [singleListTextArray2 objectAtIndex:list2RandomNumber];
        _singleListShowWord.text = singleListrandomText2;
        [singleListTextArray2 removeObjectAtIndex:list2RandomNumber];
        
    } else
    {
        // show result screen
        
        [self showAlert];
        
        NSLog(@"Correct: %d\n", singleListCorrectAnswers);
        NSLog(@"Incorrect: %d\n", singleListIncorrectAnswers);
    }
}

//List 3
- (void)list3PresentWordstoScreen {
    
    if ([singleListTextArray3 count] > 0){
        
        list3RandomNumber = arc4random()%[singleListTextArray3 count];
        singleListrandomText3 = [singleListTextArray3 objectAtIndex:list3RandomNumber];
        _singleListShowWord.text = singleListrandomText3;
        [singleListTextArray3 removeObjectAtIndex:list3RandomNumber];
        
    } else
    {
        // show result screen
        
        [self showAlert];
        
        NSLog(@"Correct: %d\n", singleListCorrectAnswers);
        NSLog(@"Incorrect: %d\n", singleListIncorrectAnswers);
    }
}

//List 4
- (void)list4PresentWordstoScreen {
    
    if ([singleListTextArray4 count] > 0){
        
        list4RandomNumber = arc4random()%[singleListTextArray4 count];
        singleListrandomText4 = [singleListTextArray4 objectAtIndex:list4RandomNumber];
        _singleListShowWord.text = singleListrandomText4;
        [singleListTextArray4 removeObjectAtIndex:list4RandomNumber];
        
    } else
    {
        // show result screen
        
        [self showAlert];
        
        NSLog(@"Correct: %d\n", singleListCorrectAnswers);
        NSLog(@"Incorrect: %d\n", singleListIncorrectAnswers);
    }
}

//List 5
- (void)list5PresentWordstoScreen {
    
    if ([singleListTextArray5 count] > 0){
        
        list5RandomNumber = arc4random()%[singleListTextArray5 count];
        singleListrandomText5 = [singleListTextArray5 objectAtIndex:list5RandomNumber];
        _singleListShowWord.text = singleListrandomText5;
        [singleListTextArray5 removeObjectAtIndex:list5RandomNumber];
        
    } else
    {
        // show result screen
        
        [self showAlert];
        
        NSLog(@"Correct: %d\n", singleListCorrectAnswers);
        NSLog(@"Incorrect: %d\n", singleListIncorrectAnswers);
    }
}

//List 6
- (void)list6PresentWordstoScreen {
    
    if ([singleListTextArray6 count] > 0){
        
        list6RandomNumber = arc4random()%[singleListTextArray6 count];
        singleListrandomText6 = [singleListTextArray6 objectAtIndex:list6RandomNumber];
        _singleListShowWord.text = singleListrandomText6;
        [singleListTextArray6 removeObjectAtIndex:list6RandomNumber];
        
    } else
    {
        // show result screen
        
        [self showAlert];
        
        NSLog(@"Correct: %d\n", singleListCorrectAnswers);
        NSLog(@"Incorrect: %d\n", singleListIncorrectAnswers);
    }
}

- (IBAction)singleListCorrectButton:(id)sender {
    
    singleListCorrectAnswers = singleListCorrectAnswers + 1;
    NSLog(@"Current Correct: %d", singleListCorrectAnswers);
    NSLog(@"Current Incorrect: %d", singleListIncorrectAnswers);
    [self list1PresentWordstoScreen];
    //play congrats sound
    
    
}

- (IBAction)singleListIncorrectButton:(id)sender {
    
    singleListIncorrectAnswers = singleListIncorrectAnswers + 1;
    NSLog(@"Current Correct: %d", singleListCorrectAnswers);
    NSLog(@"Current Incorrect: %d", singleListIncorrectAnswers);
    [self list1PresentWordstoScreen];
    
    //play bad luck sound
}

- (void)showAlert {
    
    int finalScore;
    finalScore = singleListCorrectAnswers;
    
    NSString *title = [NSString stringWithFormat:@"You scored %d/5", finalScore];
    
    NSString *finalScoreMessage;
    if (finalScore < 2){
        finalScoreMessage = @"Oops, you need much more practice";
    }else if (finalScore <3){
        finalScoreMessage = @"Keep working at it";
    }else if (finalScore < 4){
        finalScoreMessage = @"Good Effort - a few words to practice";
    }else if (finalScore < 5){
        finalScoreMessage = @"Excellent Effort - nearly perfect";
    }else if (finalScore == 5){
        finalScoreMessage = @"Perfect Score!! - well done";
    }
    
    UIAlertView *finalScoreView = [[UIAlertView alloc] initWithTitle:title
                                                             message:finalScoreMessage
                                                            delegate:self
                                                   cancelButtonTitle:@"Main Menu"
                                                   otherButtonTitles:@"Play Again", nil];
    [finalScoreView show]; }

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
        [self viewDidLoad];
    }
}


- (void)returnToMainMenu
{
    NSLog(@"returning to Main Menu");
    [self performSegueWithIdentifier:@"MainMenuSegueSingleList" sender:self];
}


@end
