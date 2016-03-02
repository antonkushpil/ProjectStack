//
//  ViewController.m
//  StackOverflow
//
//  Created by Anton Kushpil on 3/1/16.
//  Copyright © 2016 Anton Kushpil. All rights reserved.
//

#import "ViewController.h"

@interface ViewController()

@property(strong, nonatomic) StackOverflow *myStack;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    self.myStack = [StackOverflow new];
    
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (IBAction)okButton:(id)sender
{
    int myNumber = [[self.textField stringValue] intValue];
    [self.myStack pushElement:[NSNumber numberWithInt:myNumber]];
    NSString *message = [NSString stringWithFormat:@"New element %d was added to stack", myNumber];
    [self.textField setStringValue:message];
    
}

- (IBAction)pushButton:(id)sender
{
    NSNumber *popedElement = [self.myStack popElement];
    if (nil != popedElement)
    {
        NSString *message = [NSString stringWithFormat:@"An element %d was removed from stack", [popedElement intValue]];
        [self.textField setStringValue:message];
    } else {
        [self.textField setStringValue:@"Stack is empty"];
    }
    
}

@end
