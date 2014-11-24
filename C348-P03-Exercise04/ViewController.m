//
//  ViewController.m
//  C348-P03-Exercise04
//
//  Created by Seow Khee Wei (RP) on 3/11/14.
//  Copyright (c) 2014 Republic Polytechnic. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *outSegControl;
@property (weak, nonatomic) IBOutlet UILabel *outLblA;
@property (weak, nonatomic) IBOutlet UILabel *outLblB;
@property (weak, nonatomic) IBOutlet UILabel *outLblC;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)sliderChanged:(UISlider *)sender {
    double sliderValue = [sender value];
    int selectedSegmentIndex = [[self outSegControl] selectedSegmentIndex];
    
    if (selectedSegmentIndex==0){
        [[self outLblA] setText:[NSString stringWithFormat:@"Label A: %f", sliderValue]];
    
    }else if (selectedSegmentIndex==1){
        [[self outLblB] setText:[NSString stringWithFormat:@"Label B: %f", sliderValue]];
    
    }
    else{
        [[self outLblC] setText:[NSString stringWithFormat:@"Label C: %f", sliderValue]];
    
    
    }
    
}

@end
