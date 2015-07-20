//
//  DiaryEntry.h
//  
//
//  Created by Diego Aguirre on 7/19/15.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

extern NS_ENUM(int16_t, DiaryEntryMood){

    DiaryEntryMoodGood    = 0,
    DiaryEntryMoodAverage = 1,
    DiaryEntryMoodBad     = 2
    
};


@interface DiaryEntry : NSManagedObject

@property (nonatomic) NSTimeInterval date;
@property (nonatomic, retain) NSString * body;
@property (nonatomic, retain) NSData * imageData;
@property (nonatomic) int16_t mood;
@property (nonatomic, retain) NSString * location;

@property (nonatomic, readonly)NSString *sectionName;

@end
