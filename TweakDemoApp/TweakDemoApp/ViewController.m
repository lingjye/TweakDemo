//
//  ViewController.m
//  TweakDemoApp
//
//  Created by txooo on 2019/8/15.
//  Copyright © 2019 txooo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *title = [[UIDevice currentDevice] name];
    self.titleLabel.text = title;
}

- (IBAction)click {
    [self clickButton];
}

- (void)clickButton {
    self.titleLabel.text = @"Hook";
}

@end
