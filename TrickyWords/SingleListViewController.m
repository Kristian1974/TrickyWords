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
    
    singleListCorrectAnswers = 0;
    singleListIncorrectAnswers = 0;
    _singleListHeader.text = @"Select List";
    [self enableSingleListSelectionButtons];
    [self showSingleListSelectionButtons];
    _singleListShowWord.text = nil;
    correctButtonOutlet.hidden = YES;
    correctButtonOutlet.enabled = NO;
    incorrectButtonOutlet.hidden = YES;
    incorrectButtonOutlet.enabled = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}*/

-(void)list1SelectedMethod{
    
    listSelected = 1;
    singleListTextArray1 = [NSMutableArray arrayWithObjects:
                         @"the", @"and", @"a", @"to", @"I", nil];
    
    singleListCorrectAnswers = 0;
    singleListIncorrectAnswers = 0;
    _singleListHeader.text = @"List 1";
    correctButtonOutlet.hidden = NO;
    correctButtonOutlet.enabled =YES;
    incorrectButtonOutlet.hidden = NO;
    incorrectButtonOutlet.enabled = YES;
    [self disableSingleListSelectionButtons];
    [self hideSingleListSelectionButtons];
    [self list1PresentWordstoScreen];
}

-(void)list2SelectedMethod{
    
    listSelected = 2;
    singleListTextArray2 = [NSMutableArray arrayWithObjects:
                         @"look", @"come", @"in", @"is", @"it", nil];
    
    singleListCorrectAnswers = 0;
    singleListIncorrectAnswers = 0;
    _singleListHeader.text = @"List 2";
    correctButtonOutlet.hidden = NO;
    correctButtonOutlet.enabled = YES;
    incorrectButtonOutlet.hidden = NO;
    incorrectButtonOutlet.enabled = YES;
    [self disableSingleListSelectionButtons];
    [self hideSingleListSelectionButtons];
    [self list2PresentWordstoScreen];
}

-(void)list3SelectedMethod{
    
    listSelected = 3;
    singleListTextArray3 = [NSMutableArray arrayWithObjects:
                         @"can", @"home", @"we", @"mum", @"dad", nil];
    
    singleListCorrectAnswers = 0;
    singleListIncorrectAnswers = 0;
    _singleListHeader.text = @"List 3";
    correctButtonOutlet.hidden = NO;
    correctButtonOutlet.enabled = YES;
    incorrectButtonOutlet.hidden = NO;
    incorrectButtonOutlet.enabled = YES;
    [self disableSingleListSelectionButtons];
    [self hideSingleListSelectionButtons];
    [self list3PresentWordstoScreen];
}

-(void)list4SelectedMethod{
    
    listSelected = 4;
    singleListTextArray4 = [NSMutableArray arrayWithObjects:
                         @"you", @"stop", @"no", @"here", @"not", nil];
    
    singleListCorrectAnswers = 0;
    singleListIncorrectAnswers = 0;
    _singleListHeader.text = @"List 4";
    correctButtonOutlet.hidden = NO;
    correctButtonOutlet.enabled = YES;
    incorrectButtonOutlet.hidden = NO;
    incorrectButtonOutlet.enabled = YES;
    [self disableSingleListSelectionButtons];
    [self hideSingleListSelectionButtons];
    [self list4PresentWordstoScreen];
}

-(void)list5SelectedMethod{
    
    listSelected = 5;
    singleListTextArray5 = [NSMutableArray arrayWithObjects:
                         @"help", @"yes", @"go", @"off", @"now", nil];
    
    singleListCorrectAnswers = 0;
    singleListIncorrectAnswers = 0;
    _singleListHeader.text = @"List 5";
    correctButtonOutlet.hidden = NO;
    correctButtonOutlet.enabled = YES;
    incorrectButtonOutlet.hidden = NO;
    incorrectButtonOutlet.enabled = YES;
    [self disableSingleListSelectionButtons];
    [self hideSingleListSelectionButtons];
    [self list5PresentWordstoScreen];
}

-(void)list6SelectedMethod{
    
    listSelected = 6;
    singleListTextArray6 = [NSMutableArray arrayWithObjects:
                            @"see", @"like", @"where", @"he", @"my", nil];
    
    singleListCorrectAnswers = 0;
    singleListIncorrectAnswers = 0;
    _singleListHeader.text = @"List 6";
    correctButtonOutlet.hidden = NO;
    correctButtonOutlet.enabled = YES;
    incorrectButtonOutlet.hidden = NO;
    incorrectButtonOutlet.enabled = YES;
    [self disableSingleListSelectionButtons];
    [self hideSingleListSelectionButtons];
    [self list6PresentWordstoScreen];
}

// add code for list 7 etc.


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

// Add additional code for List 7 etc.

- (IBAction)singleListCorrectButton:(id)sender {
    
    singleListCorrectAnswers = singleListCorrectAnswers + 1;
    NSLog(@"Current Correct: %d", singleListCorrectAnswers);
    NSLog(@"Current Incorrect: %d", singleListIncorrectAnswers);
    [self presentNextWord];
    //play congrats sound
    
    
}

- (IBAction)singleListIncorrectButton:(id)sender {
    
    singleListIncorrectAnswers = singleListIncorrectAnswers + 1;
    NSLog(@"Current Correct: %d", singleListCorrectAnswers);
    NSLog(@"Current Incorrect: %d", singleListIncorrectAnswers);
    [self presentNextWord];
    
    //play bad luck sound
}

- (IBAction)list1Selected:(id)sender {
    
    [self list1SelectedMethod];
    
}

- (IBAction)list2Selected:(id)sender {
    
    [self list2SelectedMethod];
}

- (IBAction)list3Selected:(id)sender {
    
    [self list3SelectedMethod];
}

- (IBAction)list4Selected:(id)sender {
    
    [self list4SelectedMethod];
}

- (IBAction)list5Selected:(id)sender {
    
    [self list5SelectedMethod];
}

- (IBAction)list6Selected:(id)sender {
    
    [self list6SelectedMethod];
}

/*- (IBAction)list7Selected:(id)sender {
    
    [self list7SelectedMethod];
}

- (IBAction)list8Selected:(id)sender {
 
    [self list8SelectedMethod];
}

- (IBAction)list9Selected:(id)sender {
 
    [self list9SelectedMethod];
}

- (IBAction)list10Selected:(id)sender {
 
    [self list10SelectedMethod];
}*/

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

- (void)disableSingleListSelectionButtons
{
    singleList1ButtonOutlet.enabled = NO;
    singleList2ButtonOutlet.enabled = NO;
    singleList3ButtonOutlet.enabled = NO;
    singleList4ButtonOutlet.enabled = NO;
    singleList5ButtonOutlet.enabled = NO;
    singleList6ButtonOutlet.enabled = NO;
    singleList7ButtonOutlet.enabled = NO;
    singleList8ButtonOutlet.enabled = NO;
    singleList9ButtonOutlet.enabled = NO;
    singleList10ButtonOutlet.enabled = NO;
}

- (void)hideSingleListSelectionButtons
{
    singleList1ButtonOutlet.hidden = YES;
    singleList2ButtonOutlet.hidden = YES;
    singleList3ButtonOutlet.hidden = YES;
    singleList4ButtonOutlet.hidden = YES;
    singleList5ButtonOutlet.hidden = YES;
    singleList6ButtonOutlet.hidden = YES;
    singleList7ButtonOutlet.hidden = YES;
    singleList8ButtonOutlet.hidden = YES;
    singleList9ButtonOutlet.hidden = YES;
    singleList10ButtonOutlet.hidden = YES;
}

- (void)enableSingleListSelectionButtons
{
    singleList1ButtonOutlet.enabled = YES;
    singleList2ButtonOutlet.enabled = YES;
    singleList3ButtonOutlet.enabled = YES;
    singleList4ButtonOutlet.enabled = YES;
    singleList5ButtonOutlet.enabled = YES;
    singleList6ButtonOutlet.enabled = YES;
    singleList7ButtonOutlet.enabled = YES;
    singleList8ButtonOutlet.enabled = YES;
    singleList9ButtonOutlet.enabled = YES;
    singleList10ButtonOutlet.enabled = YES;
}

- (void)showSingleListSelectionButtons
{
    singleList1ButtonOutlet.hidden = NO;
    singleList2ButtonOutlet.hidden = NO;
    singleList3ButtonOutlet.hidden = NO;
    singleList4ButtonOutlet.hidden = NO;
    singleList5ButtonOutlet.hidden = NO;
    singleList6ButtonOutlet.hidden = NO;
    singleList7ButtonOutlet.hidden = NO;
    singleList8ButtonOutlet.hidden = NO;
    singleList9ButtonOutlet.hidden = NO;
    singleList10ButtonOutlet.hidden = NO;

}

- (void)presentNextWord
{
    if (listSelected == 1)
    {
        [self list1PresentWordstoScreen];
    }
    else if (listSelected == 2)
    {
        [self list2PresentWordstoScreen];
    }
    else if (listSelected == 3)
    {
        [self list3PresentWordstoScreen];
    }
    else if (listSelected == 4)
    {
        [self list4PresentWordstoScreen];
    }
    else if (listSelected == 5)
    {
        [self list5PresentWordstoScreen];
    }
    else if (listSelected == 6)
    {
        [self list6PresentWordstoScreen];
    }
}

// code for list 7 onwards.
@end
