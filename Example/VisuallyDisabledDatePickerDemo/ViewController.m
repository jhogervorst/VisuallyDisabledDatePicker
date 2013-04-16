//
//  ViewController.m
//  VisuallyDisabledDatePickerDemo
//
//  Created by Jonathan Hogervorst on 16-04-13.
//  Copyright (c) 2013 Buzzera. All rights reserved.
//

#import "UIDatePicker+VisuallyDisabled.h"

#import "ViewController.h"

@implementation ViewController

@synthesize datePicker;

- (void)viewDidLoad
{
	[super viewDidLoad];
	
	self.view.backgroundColor = [UIColor colorWithWhite:0.9 alpha:1];
	
	UIButton *enableButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	enableButton.frame = CGRectMake(20, 20, self.view.bounds.size.width - 40, 80);
	[enableButton setTitle:@"Enable" forState:UIControlStateNormal];
	[enableButton addTarget:self action:@selector(enableDatePicker) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:enableButton];
	
	UIButton *disableButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	disableButton.frame = CGRectMake(20, 120, self.view.bounds.size.width - 40, 80);
	[disableButton setTitle:@"Disable" forState:UIControlStateNormal];
	[disableButton addTarget:self action:@selector(disableDatePicker) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:disableButton];
	
	self.datePicker = [[UIDatePicker alloc] initWithFrame:CGRectZero];
	self.datePicker.frame = CGRectMake(0, self.view.bounds.size.height - self.datePicker.bounds.size.height, self.view.bounds.size.width, self.datePicker.bounds.size.height);
	[self.view addSubview:self.datePicker];
}

- (void)enableDatePicker
{
	[self.datePicker visuallySetEnabled:YES];
}

- (void)disableDatePicker
{
	[self.datePicker visuallySetEnabled:NO];
}

@end