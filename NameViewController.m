//
//  NameViewController.m
//  牧场管理
//
//  Created by Mr.Y on 2017/3/2.
//  Copyright © 2017年 杨磊. All rights reserved.
//

#import "NameViewController.h"
#import "AnimalGroupViewController.h"
@interface NameViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameText;
@property (weak, nonatomic) IBOutlet UIButton *nextBtn;

@end

@implementation NameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}
- (IBAction)nextBtnClick:(id)sender {
    
    NSUserDefaults *accountDefaults = [NSUserDefaults standardUserDefaults];
    [accountDefaults setObject:_nameText.text forKey:@"name"];
    AnimalGroupViewController *groupVC = [[AnimalGroupViewController alloc] init];
    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:groupVC];
    groupVC.authorization = self.authorization;
    [self presentViewController:navi animated:YES completion:nil];
   
    
}


@end
