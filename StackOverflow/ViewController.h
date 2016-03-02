//
//  ViewController.h
//  StackOverflow
//
//  Created by Anton Kushpil on 3/1/16.
//  Copyright © 2016 Anton Kushpil. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "StackOverflow.h"

@interface ViewController : NSViewController

@property (weak) IBOutlet NSTextField *textField;

- (IBAction)okButton:(id)sender;
- (IBAction)pushButton:(id)sender;

@end

