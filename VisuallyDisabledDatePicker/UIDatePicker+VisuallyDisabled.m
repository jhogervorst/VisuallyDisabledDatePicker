//
//  UIDatePicker+VisuallyDisabled.m
//
//  Created by Jonathan Hogervorst on 15-04-13.
//  Copyright (c) 2013 Buzzera. All rights reserved.
//
//  This code is licensed under MIT license.
//  See LICENSE.txt for details.
//

#import "UIDatePicker+VisuallyDisabled.h"

@implementation UIDatePicker (VisuallyDisabled)

- (void)visuallySetEnabled:(BOOL)_enabled
{
	self.enabled = _enabled;
	
	id rootViewObject = [self.subviews objectAtIndex:0];
	
	if (!rootViewObject) {
		return;
	}
	
	NSString *rootViewClassName = NSStringFromClass([rootViewObject class]);
	
	// _UIDatePickerView is the root view in iOS 6
	// UIDatePickerView is the root view in iOS 5
	if (![rootViewClassName isEqualToString:@"_UIDatePickerView"] && ![rootViewClassName isEqualToString:@"UIDatePickerView"]) {
		return;
	}
	
	UIView *rootView = rootViewObject;
	
	for (UIView *subview in rootView.subviews) {
		NSString *subviewClassName = NSStringFromClass([subview class]);
		
		// _UIPickerWheelView is the component background
		if ([subviewClassName isEqualToString:@"_UIPickerWheelView"]) {
			subview.alpha = self.enabled ? 1 : 0.75;
		}
		
		// UIPickerTableView contains the component text
		else if ([subviewClassName isEqualToString:@"UIPickerTableView"]) {
			subview.alpha = self.enabled ? 1 : 0.5;
		}
		
		// _UIPickerViewSelectionBar is the selection indicator
		else if ([subviewClassName isEqualToString:@"_UIPickerViewSelectionBar"]) {
			subview.alpha = self.enabled ? 1 : 0.5;
		}
	}
}

@end