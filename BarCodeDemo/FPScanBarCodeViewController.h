//
//  FPScanBarCodeViewController.h
//  BarCodeDemo
//
//  Created by Yosmite on 1/13/15.
//  Copyright (c) 2015 LC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"


@protocol ScanBarCodeDelegate <NSObject>

- (void) setBarCodeString : (NSString*)barCode;

@end

@interface FPScanBarCodeViewController : UIViewController
@property (weak) id <ScanBarCodeDelegate>delegate;


@end
