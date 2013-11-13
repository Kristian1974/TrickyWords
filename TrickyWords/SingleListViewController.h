//
//  SingleListViewController.h
//  TrickyWords
//
//  Created by Kristian Mills on 30/10/2013.
//  Copyright (c) 2013 Kristian Mills. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SingleListViewController : UIViewController
<UIAlertViewDelegate>

{

    IBOutlet UIButton *singleList1ButtonOutlet;
    IBOutlet UIButton *singleList2ButtonOutlet;
    IBOutlet UIButton *singleList3ButtonOutlet;
    IBOutlet UIButton *singleList4ButtonOutlet;
    IBOutlet UIButton *singleList5ButtonOutlet;
    IBOutlet UIButton *singleList6ButtonOutlet;
    IBOutlet UIButton *singleList7ButtonOutlet;
    IBOutlet UIButton *singleList8ButtonOutlet;
    IBOutlet UIButton *singleList9ButtonOutlet;
    IBOutlet UIButton *singleList10ButtonOutlet;
    
    IBOutlet UIButton *correctButtonOutlet;
    IBOutlet UIButton *incorrectButtonOutlet;
    
    int listSelected;
    
    int singleListCorrectAnswers;
    int singleListIncorrectAnswers;
   
    int list1RandomNumber;
    int list2RandomNumber;
    int list3RandomNumber;
    int list4RandomNumber;
    int list5RandomNumber;
    int list6RandomNumber;
    
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
    
    NSString *singleListrandomText6;
    NSMutableArray *singleListTextArray6;
    
   /* NSString *singleListrandomText7;
    NSMutableArray *singleListTextArray7;

    NSString *singleListrandomText8;
    NSMutableArray *singleListTextArray8;

    NSString *singleListrandomText9;
    NSMutableArray *singleListTextArray9;
    
    NSString *singleListrandomText10;
    NSMutableArray *singleListTextArray10;*/
}

@property (strong, nonatomic) IBOutlet UILabel *singleListShowWord;
@property (strong, nonatomic) IBOutlet UILabel *singleListHeader;

//@property (retain, nonatomic) IBOutlet UIPickerView *Picker;
//@property (retain, nonatomic) NSArray *PickerData;
- (IBAction)singleListCorrectButton:(id)sender;
- (IBAction)singleListIncorrectButton:(id)sender;
- (IBAction)list1Selected:(id)sender;
- (IBAction)list2Selected:(id)sender;
- (IBAction)list3Selected:(id)sender;
- (IBAction)list4Selected:(id)sender;
- (IBAction)list5Selected:(id)sender;
- (IBAction)list6Selected:(id)sender;
/*- (IBAction)list7Selected:(id)sender;
- (IBAction)list8Selected:(id)sender;
- (IBAction)list9Selected:(id)sender;
- (IBAction)list10Selected:(id)sender;*/


-(void)list1SelectedMethod;
-(void)list2SelectedMethod;
-(void)list3SelectedMethod;
-(void)list4SelectedMethod;
-(void)list5SelectedMethod;
-(void)list6SelectedMethod;
/*-(void)list7SelectedMethod;
-(void)list8SelectedMethod;
-(void)list9SelectedMethod;
-(void)list10SelectedMethod;*/

@end
