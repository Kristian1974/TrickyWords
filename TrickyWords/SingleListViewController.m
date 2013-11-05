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
	// Do any additional setup after loading the view.
    
    NSArray *array = [[NSArray alloc] initWithObjects:@"list 1",@"list 2",@"list 3",@"list 4", @"list 5", nil];
    self.PickerData = array;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return _PickerData.count;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return _PickerData [row];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    int select = row;
    if (select == 0) {
        //label.text = @"list 1 Is Selected";
        [self list1Selected];
    } else
        if (select == 1) {
            //label.text = @"list 2 Is Selected";
            [self list2Selected];
        } else
            if (select == 2) {
                //label.text = @"list 3 Is Selected";
                [self list3Selected];
            } else
                if (select == 3) {
                    //label.text = @"list 4 Is Selected";
                    [self list4Selected];
                }
                else
                    if (select == 4) {
                        //label.text = @"list 5 Is Selected";
                        [self list5Selected];
                    }
}

-(void)list1Selected{
    
    singleListTextArray1 = [NSMutableArray arrayWithObjects:
                         @"the", @"and", @"a", @"to", @"I", nil];
    
    list1CorrectAnswers = 0;
    list1IncorrectAnswers = 0;
    
    [self list1PresentWordstoScreen];
}

-(void)list2Selected{
    
    singleListTextArray2 = [NSMutableArray arrayWithObjects:
                         @"look", @"come", @"in", @"is", @"it", nil];
    
    list2CorrectAnswers = 0;
    list2IncorrectAnswers = 0;
}

-(void)list3Selected{
    
    singleListTextArray3 = [NSMutableArray arrayWithObjects:
                         @"can", @"home", @"we", @"mum", @"dad", nil];
    
    list3CorrectAnswers = 0;
    list3IncorrectAnswers = 0;
}

-(void)list4Selected{
    
    singleListTextArray4 = [NSMutableArray arrayWithObjects:
                         @"you", @"stop", @"no", @"here", @"not", nil];
    
    list4CorrectAnswers = 0;
    list4IncorrectAnswers = 0;
}

-(void)list5Selected{
    
    singleListTextArray5 = [NSMutableArray arrayWithObjects:
                         @"help", @"yes", @"go", @"off", @"now", nil];
    
    list5CorrectAnswers = 0;
    list5IncorrectAnswers = 0;
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
        
        NSLog(@"Correct: %d\n", list1CorrectAnswers);
        NSLog(@"Incorrect: %d\n", list1IncorrectAnswers);
    }
}

- (IBAction)singleListCorrectButton:(id)sender {
    
    list1CorrectAnswers = list1CorrectAnswers + 1;
    NSLog(@"Current Correct: %d", list1CorrectAnswers);
    NSLog(@"Current Incorrect: %d", list1IncorrectAnswers);
    [self list1PresentWordstoScreen];
    //play congrats sound
    
    
}

- (IBAction)singleListIncorrectButton:(id)sender {
    
    list1IncorrectAnswers = list1IncorrectAnswers + 1;
    NSLog(@"Current Correct: %d", list1CorrectAnswers);
    NSLog(@"Current Incorrect: %d", list1IncorrectAnswers);
    [self list1PresentWordstoScreen];
    
    //play bad luck sound
}

- (void)showAlert {
    
    int finalScore;
    finalScore = list1CorrectAnswers;
    
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
