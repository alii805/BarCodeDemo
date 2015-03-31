//
//  ViewController.m
//  BarCodeDemo
//
//  Created by Yosmite on 1/13/15.
//  Copyright (c) 2015 LC. All rights reserved.
//

#import "Constants.h"
#import "ViewController.h"
#import "FPScanBarCodeViewController.h"

@interface ViewController () {
    NSString * barCode;
}

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

- (IBAction)btnAction:(id)sender {
    if ([sender tag] == 1) {
        FPScanBarCodeViewController *sBVC = [[UIStoryboard storyboardWithName:@"Main" bundle: nil] instantiateViewControllerWithIdentifier:@"scanBarViewController"];
        [[APP_DELEGATE navController] pushViewController:sBVC animated:YES];
        sBVC.delegate = self;
    }
    
}

- (void)setBarCodeString:(NSString*) code
{
    barCode = code;
}

@end
