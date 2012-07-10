//
//  ViewController.m
//  binary app 2
//
//  Created by Tyson Walton on 7/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


// converter fuction that takes any base 

-(IBAction)converter:(id)sender{
    NSString *output;
    
    int I;
    int chosenbase;
    int Q =  [inputText.text intValue];
    int remainder;
    int B[20];
    
    
    
    
    NSLog (@"Input Text = %@", inputText);
    chosenbase = [baseText.text intValue];
    NSLog(@"Input Number = %d", Q);
    
    for (I = 0; I < 20; I = I + 1) {
        B[I] = 0;
    }
    
    I = 0;
    
    while (Q > 0) {
        remainder = Q % chosenbase;
        B[I] = remainder ;
        Q = Q / chosenbase; 
        I = I + 1;
    }
    output = [NSString stringWithFormat:@"%d%d%d%d %d%d%d%d %d%d%d%d %d%d%d%d %d%d%d%d", B[19], B[18], B[17], B[16], B[15], B[14], B[13], B[12], B[11], B[10], B[9], B[8], B[7], B[6], B[5], B[4], B[3], B[2], B[1], B[0]];
    NSLog(@"Binary Number =  %d%d%d%d %d%d%d%d %d%d%d%d", B[11], B[10], B[9], B[8], B[7], B[6], B[5], B[4], B[3], B[2], B[1], B[0]);
    
    outputText.text = output;
    
}
    
-(IBAction)removeKeyBoard{
    [inputText resignFirstResponder];
    
 
    
    
}
@end
