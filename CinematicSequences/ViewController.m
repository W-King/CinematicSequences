//
//  ViewController.m
//  CinematicSequences
//
//  Created by pipixia on 16/10/9.
//  Copyright © 2016年 pipixia. All rights reserved.
//

#import "ViewController.h"
#import "PPX_ViewController.h"
#import "CollapseAnimator.h"


@interface ViewController ()<UIViewControllerTransitioningDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *playBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    playBtn.frame = CGRectMake(100, 300, 100, 50);
    playBtn.backgroundColor = [UIColor redColor];
    [playBtn addTarget:self action:@selector(playClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:playBtn];

    
}
- (void)playClicked
{
    PPX_ViewController *secView = [[PPX_ViewController alloc] init];
    secView.transitioningDelegate = self;
    [self presentViewController:secView animated:YES completion:nil];
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    
    CollapseAnimator *animator = [[CollapseAnimator alloc] init];
    //animator.duration = 1;
    //animator.sideLength = 8;
    return animator;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
