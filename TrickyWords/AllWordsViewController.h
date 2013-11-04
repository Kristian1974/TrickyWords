//
//  AllWordsViewController.h
//  TrickyWords
//
//  Created by Kristian Mills on 30/10/2013.
//  Copyright (c) 2013 Kristian Mills. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TWViewController.h"

@interface AllWordsViewController : UIViewController <UIAlertViewDelegate>
{
    int allWordsCorrectAnswers;
    int allWordsIncorrectAnswers;
    int allWordsRandomNumber;
    int wordNumber;
    
    NSString *allWordsrandomText;
    NSMutableArray *allWordsTextArray;
  
   //IBOutlet UILabel *allWordsShowWord;
}

@property (weak, nonatomic) IBOutlet UILabel *wordNumberLabel;

@property (weak, nonatomic) IBOutlet UILabel *allWordsShowWord;

- (void)showAlert;
- (void)allWordsPresentWordstoScreen;
- (IBAction)allWordsCorrectButton:(id)sender;
- (IBAction)allWordsIncorrectButton:(id)sender;

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex;



@end
