//
//  AppDelegate.h
//  AutoGeneratePropertyCode
//
//  Created by  jacob on 13-6-8.
//  Copyright (c) 2013年 Jacob QQ:110773265. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate,NSTextFieldDelegate>
@property (weak) IBOutlet NSTextField *typeLabel;
@property (unsafe_unretained) IBOutlet NSTextView *resultText;
@property (weak) IBOutlet NSScrollView *result;
@property (weak) IBOutlet NSTextField *textField;

@property (assign) IBOutlet NSWindow *window;


@end
