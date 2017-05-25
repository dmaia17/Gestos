//
//  PanViewController.m
//  Gestos
//
//  Created by Daniel Maia dos Passos on 25/05/17.
//  Copyright © 2017 Daniel Maia. All rights reserved.
//

#import "PanViewController.h"

@interface PanViewController ()

@property (nonatomic, strong) UILabel *labelTitle;
@property (nonatomic, strong) UIView *viewPan;

@end

@implementation PanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _labelTitle = [[UILabel alloc] initWithFrame:CGRectZero];
    _labelTitle.textColor = [UIColor blueColor];
    _labelTitle.text = @"PAN";
    _labelTitle.textAlignment = NSTextAlignmentCenter;
    _labelTitle.frame = CGRectMake(0, 50, self.view.frame.size.width, 50);
    [self.view addSubview:_labelTitle];
    
    _viewPan = [[UIView alloc] initWithFrame:CGRectZero];
    _viewPan.backgroundColor = [UIColor blueColor];
    _viewPan.frame = CGRectMake((self.view.frame.size.width/2) - 50, (self.view.frame.size.height/2) - 50, 100, 100);
    [self.view addSubview:_viewPan];
    
    UIPanGestureRecognizer *panGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(moveViewWithGestureRecognizer:)];
    [_viewPan addGestureRecognizer:panGestureRecognizer];
}

-(void)moveViewWithGestureRecognizer:(UIPanGestureRecognizer *)panGestureRecognizer{
    CGPoint touchLocation = [panGestureRecognizer locationInView:self.view];
    
    _viewPan.center = touchLocation;
}


@end
