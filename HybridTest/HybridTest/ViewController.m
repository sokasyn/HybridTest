//
//  ViewController.m
//  HybridTest
//
//  Created by 李星月 on 16/3/24.
//  Copyright © 2016年 com.emin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"view did load..");
    [self inits];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)inits{
    [self initComponents];
}

- (void)initComponents{
    NSLog(@"components init..");
    [self loadWebPage];
}

- (void)loadWebPage{
    NSURL *url = [[NSURL alloc] initWithString:@"http://www.baidu.com"];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    [self.webView loadRequest:request];
    if (self.webView.canGoBack) {
        NSLog(@"can go back");
    }else{
        NSLog(@"Can not go back.");
    }
}

@end
