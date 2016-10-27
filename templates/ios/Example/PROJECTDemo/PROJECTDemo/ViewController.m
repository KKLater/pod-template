//
//  ViewController.m
//  FBTNetworkingDemo
//
//  Created by Later on 2016/10/21.
//  Copyright © 2016年 fblife. All rights reserved.
//

#import "ViewController.h"
#import "FBTHeroAccordingStateBLL.h"
#import "FBTHeroAccordingStateRespondEnitity.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self heroStateDownload];

    // Do any additional setup after loading the view, typically from a nib.
}
- (void)heroStateDownload{
    FBTHeroAccordingStateBLL *accordingStateBLL = [[FBTHeroAccordingStateBLL alloc]init];
    [accordingStateBLL startRequestWithSuccessBlock:^(FBTHeroAccordingStateRespondEnitity *info) {
        NSLog(@"%@ ------ %@", info, info.status);
        
    } failure:^(NSString *error) {
        NSLog(@"%@", error);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
