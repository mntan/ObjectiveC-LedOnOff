//
//  ViewController.m
//  C_LEDDEMO
//
//  Created by Nguyen Minh Tan on 3/28/17.
//  Copyright © 2017 Torginization. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *buttonOnOff;
@property (weak, nonatomic) IBOutlet UIImageView *ledPhoto;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _ledPhoto.image = [UIImage imageNamed:@"circle_blue"];
    NSString *path = [[NSBundle mainBundle] resourcePath];
    NSLog(@"%@", path);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onButtonTap:(id)sender {
    if ([_ledPhoto.image isEqual: [UIImage imageNamed:@"circle_blue"]]) {
        _ledPhoto.image = [UIImage imageNamed:@"circle_green"];
    } else {
        _ledPhoto.image = [UIImage imageNamed:@"circle_blue"];
    }
}


@end
