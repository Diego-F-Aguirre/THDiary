//
//  DiaryEntry.m
//  
//
//  Created by Diego Aguirre on 7/19/15.
//
//

#import "DiaryEntry.h"


@implementation DiaryEntry

@dynamic date;
@dynamic body;
@dynamic imageData;
@dynamic mood;
@dynamic location;

- (NSString *)sectionName {

    NSDate *date = [NSDate dateWithTimeIntervalSince1970:self.date];
    
    NSDateFormatter *dateformatter = [[NSDateFormatter alloc]init];
    [dateformatter setDateFormat:@"MMM yyyy"];
    
    return [dateformatter stringFromDate:date];
}
@end
