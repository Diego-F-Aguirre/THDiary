//
//  NewEntryViewController.m
//  Diary
//
//  Created by Diego Aguirre on 7/19/15.
//  Copyright (c) 2015 Diego Aguirre. All rights reserved.
//

#import "NewEntryViewController.h"
#import "DiaryEntry.h"
#import "CoreDataStack.h"

@interface NewEntryViewController ()

@property (strong, nonatomic) IBOutlet UITextField *textField;


@end

@implementation NewEntryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dismissSelf{

    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

- (void)insertDiaryEntry{

    CoreDataStack *coreDataStack = [CoreDataStack defaultStack];
    DiaryEntry *entry = [NSEntityDescription insertNewObjectForEntityForName:@"DiaryEntry" inManagedObjectContext:coreDataStack.managedObjectContext];
    entry.body = self.textField.text;
    entry.date = [[NSDate date] timeIntervalSince1970];
    [coreDataStack saveContext];
}

- (IBAction)cancelWasPressed:(id)sender {
    [self insertDiaryEntry];
    [self dismissSelf];
    
}

- (IBAction)doneWasPressed:(id)sender {
    
    [self dismissSelf];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
