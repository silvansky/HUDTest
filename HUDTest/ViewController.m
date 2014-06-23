//
//  ViewController.m
//  HUDTest
//
//  Created by Valentine on 23.06.14.
//  Copyright (c) 2014 silvansky. All rights reserved.
//

#import "ViewController.h"

#import <ReactiveCocoa.h>
#import <SAMHUDView.h>

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UIButton *showHUDButton;

@end

@implementation ViewController
            
- (void)viewDidLoad
{
	[super viewDidLoad];
	self.showHUDButton.rac_command = [[RACCommand alloc] initWithSignalBlock:^RACSignal *(id input) {
		[[[SAMHUDView alloc] initWithTitle:@"Loading" loading:YES] show];
		return [RACSignal empty];
	}];
}

- (void)didReceiveMemoryWarning
{
	[super didReceiveMemoryWarning];
}

@end
