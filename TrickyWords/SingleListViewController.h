//
//  SingleListViewController.h
//  TrickyWords
//
//  Created by Kristian Mills on 30/10/2013.
//  Copyright (c) 2013 Kristian Mills. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SingleListViewController : UIViewController
<UIPickerViewDelegate, UIPickerViewDataSource, UIAlertViewDelegate>

{

    IBOutlet UILabel *label;
    IBOutlet UIPickerView *Picker;
    NSArray *PickerData;
    
    int list1CorrectAnswers;
    int list1IncorrectAnswers;
    int list1RandomNumber;
    
    int list2CorrectAnswers;
    int list2IncorrectAnswers;
    int list2RandomNumber;
    
    int list3CorrectAnswers;
    int list3IncorrectAnswers;
    int list3RandomNumber;
    
    int list4CorrectAnswers;
    int list4IncorrectAnswers;
    int list4RandomNumber;
    
    int list5CorrectAnswers;
    int list5IncorrectAnswers;
    int list5RandomNumber;
    
    NSString *singleListrandomText1;
    NSMutableArray *singleListTextArray1;
    
    NSString *singleListrandomText2;
    NSMutableArray *singleListTextArray2;

    NSString *singleListrandomText3;
    NSMutableArray *singleListTextArray3;

    NSString *singleListrandomText4;
    NSMutableArray *singleListTextArray4;

    NSString *singleListrandomText5;
    NSMutableArray *singleListTextArray5;

}

@property (strong, nonatomic) IBOutlet UILabel *singleListShowWord;

@property (retain, nonatomic) IBOutlet UIPickerView *Picker;
@property (retain, nonatomic) NSArray *PickerData;
- (IBAction)singleListCorrectButton:(id)sender;
- (IBAction)singleListIncorrectButton:(id)sender;


-(void)list1Selected;
-(void)list2Selected;
-(void)list3Selected;
-(void)list4Selected;
-(void)list5Selected;


@end
