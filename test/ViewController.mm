//
//  ViewController.m
//  test
//
//  Created by Yulin Liang on 10/8/20.
//  Copyright © 2020 Yulin Liang. All rights reserved.
//

#import "ViewController.h"
#import "Hello.h"

@interface ViewController () {
  Hello* hello;
}

@end

@implementation ViewController

- (void)viewDidLoad {
  std::string text = "heelo";
  hello->ExampleMethod(text);
  [super viewDidLoad];
  // Do any additional setup after loading the view.
}


@end
