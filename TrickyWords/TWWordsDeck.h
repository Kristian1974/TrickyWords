//
//  TWAllWordsDeck.h
//  TrickyWords
//
//  Created by Kristian Mills on 04/11/2013.
//  Copyright (c) 2013 Kristian Mills. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TWWordsDeck : NSObject
{

NSMutableArray *allWordsTextArray;

}

@property (nonatomic) int numberOfcards;
@property (nonatomic) int numberOfLists;
@property (nonatomic, strong) NSString *includedListName;


@end
