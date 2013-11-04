//
//  SingleListViewController.h
//  TrickyWords
//
//  Created by Kristian Mills on 30/10/2013.
//  Copyright (c) 2013 Kristian Mills. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SingleListViewController : UIViewController{
    
    int singleListCorrectAnswers;
    int singleListIncorrectAnswers;
    int singleListRandomNumber;
    
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

@end
