//
//  AppDelegate.m
//  AutoGeneratePropertyCode
//
//  Created by  jacob on 13-6-8.
//  Copyright (c) 2013年 Jacob QQ:110773265. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize result,textField,resultText,typeLabel;

static NSString * currentType=@"NSString *";
static NSString * currentResult=@"";

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    self.textField.delegate=self;
    [typeLabel setStringValue:@"current type is : NSString *"];

}

- (void)controlTextDidEndEditing:(NSNotification *)aNotification
{
    NSLog(@"controlTextDidEndEditing..%@",self.textField.stringValue);
    NSString *textValue=self.textField.stringValue;
    
    if ([textValue isEqualToString:@"NSString"] || [textValue isEqualToString:@"String"] ||[textValue isEqualToString:@"string"] ||[textValue isEqualToString:@"s"])
    {
        currentType=@"NSString *";
        [self.textField setStringValue:@""];
        [typeLabel setStringValue:@"current type is : NSString *"];
        return;
    }
    if ([textValue isEqualToString:@"NSDate"] ||[textValue isEqualToString:@"Date"] ||[textValue isEqualToString:@"date"])
    {
        currentType=@"NSDate *";
        [self.textField setStringValue:@""];
        [typeLabel setStringValue:@"current type is : NSDate *"];
        return;
    }
    if ([textValue isEqualToString:@"NSMuteableArray"] )
    {
        currentType=@"NSMuteableArray *";
        [self.textField setStringValue:@""];
        [typeLabel setStringValue:@"current type is : NSMuteableArray *"];
        return;
    }
    if ([textValue isEqualToString:@"NSArray"] ||[textValue isEqualToString:@"array"] ||[textValue isEqualToString:@"Array"] )
    {
        currentType=@"NSArray *";
        [self.textField setStringValue:@""];
        [typeLabel setStringValue:@"current type is : NSArray *"];
        return;
    }
    if ([textValue isEqualToString:@"NSDictionary"] ||[textValue isEqualToString:@"Dictionary"] ||[textValue isEqualToString:@"dic"]  )
    {
        currentType=@"NSDictionary *";
        [self.textField setStringValue:@""];
        [typeLabel setStringValue:@"current type is : NSDictionary *"];
        return;
    }
    if ([textValue isEqualToString:@"NSMutableDictionary"] )
    {
        currentType=@"NSMutableDictionary *";
        [self.textField setStringValue:@""];
        [typeLabel setStringValue:@"current type is : NSMutableDictionary *"];
        return;
    }
    if ([textValue isEqualToString:@"NSInteger"] )
    {
        currentType=@"NSInteger ";
        [self.textField setStringValue:@""];
        [typeLabel setStringValue:@"current type is : NSInteger"];
        return;
    }
    NSString *insertString=@"@property (nonatomic, strong) ";
    insertString=[insertString stringByAppendingFormat:@"%@ %@;\n",currentType,textValue];
    [resultText insertText:insertString];
    [self.textField setStringValue:@""];
    
}


@end
