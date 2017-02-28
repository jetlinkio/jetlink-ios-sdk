//
//  ViewController.m
//  JetlinkSample
//
//  Created by Kaan Tezgel on 24/02/17.
//  Copyright © 2017 VesLabs. All rights reserved.
//

#import "ViewController.h"
@import JetlinkSDK;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)ChatClick:(id)sender {
    [JetlinkApp activateChatPanel];
}
- (IBAction)FAQClick:(id)sender {
    [JetlinkApp activateFAQPanel];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
