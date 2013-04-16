VisuallyDisabledDatePicker
==========================

UIDatePicker does not indicate whether it is disabled. This Objective-C category provides a method to visually disable a UIDatePicker.

Example
-------

![Enabled and disabled UIDatePicker](http://cl.ly/image/3e3u003r361f/VisuallyDisabledDatePickerDemo.png)

Usage
-----

1. Add `UIDatePicker+VisuallyDisabled.h` and `UIDatePicker+VisuallyDisabled.m` to your project.
2. Place `#import "UIDatePicker+VisuallyDisabled.h"` in top of the files where you'd like to disable a UIDatePicker.
3. Call `[aDatePicker visuallySetEnabled:NO]` to disable a UIDatePicker. Replace `NO` with `YES` to enable it afterwards.

Methods
-------

Only one method is available:

```
- (void)visuallySetEnabled:(BOOL)enabled
```

When this method is called, the UIDatePicker is enabled or disabled and the [`alpha`](http://developer.apple.com/library/ios/documentation/UIKit/Reference/UIView_Class/UIView/UIView.html#//apple_ref/occ/instp/UIView/alpha) property of the relevant subviews is changed, to visually show whether the control is enabled or disabled. This method should be used instead of the default [`setEnabled:`](http://developer.apple.com/library/ios/documentation/uikit/reference/UIControl_Class/Reference/Reference.html#//apple_ref/occ/instp/UIControl/enabled) method.

Compatibility
-------------

The code requires ARC. It has been tested in the iOS Simulator with iOS versions 5.0, 5.1, 6.0 and 6.1, both for iPhone and iPad.

**Because the appearance of standard iOS UI elements is changed, Apple might reject apps using this code. Usage of this code is therefore at your own risk.**

License
-------

The code is licensed under MIT license. See `LICENSE.txt` for details.