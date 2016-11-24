//
//  ViewController.m
//  汉字转拼音Demo
//
//  Created by use on 16/2/29.
//  Copyright © 2016年 wjp. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *string = [self transformToPinyin:@"音乐，快乐"];
    NSLog(@"=%@=", string);
}


- (NSString *)transformToPinyin : (NSString *)srcStr {
    NSMutableString *mutableString = [NSMutableString stringWithString:srcStr];
    CFStringTransform((CFMutableStringRef)mutableString, NULL, kCFStringTransformMandarinLatin, NO);
//    CFStringTransform((CFMutableStringRef)mutableString, NULL, kCFStringTransformStripDiacritics, NO);
//    mutableString = (NSMutableString *)[mutableString stringByFoldingWithOptions:NSDiacriticInsensitiveSearch locale:[NSLocale currentLocale]];
    return [mutableString stringByReplacingOccurrencesOfString:@"'" withString:@""];
}

@end
