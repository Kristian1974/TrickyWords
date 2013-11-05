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

    IBOutlet UILabel *label;
    
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

}

@property (strong, nonatomic) IBOutlet UILabel *singleListShowWord;

//@property (retain, nonatomic) IBOutlet UIPickerView *Picker;
//@property (retain, nonatomic) NSArray *PickerData;
- (IBAction)singleListCorrectButton:(id)sender;
- (IBAction)singleListIncorrectButton:(id)sender;

-(void)list1Selected;
-(void)list2Selected;
-(void)list3Selected;
-(void)list4Selected;
-(void)list5Selected;
-(void)list6Selected;

@end
