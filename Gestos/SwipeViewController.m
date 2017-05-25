//
//  SwipeViewController.m
//  Gestos
//
//  Created by Daniel Maia dos Passos on 25/05/17.
//  Copyright © 2017 Daniel Maia. All rights reserved.
//

#import "SwipeViewController.h"

@interface SwipeViewController ()

@property (nonatomic, strong) UILabel *labelTitle;
@property (nonatomic, strong) UIView *viewFirst;
@property (nonatomic, strong) UIView *viewSecond;
@property (nonatomic, strong) UIView *viewThird;

@end

@implementation SwipeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _labelTitle = [[UILabel alloc] initWithFrame:CGRectZero];
    _labelTitle.textColor = [UIColor blueColor];
    _labelTitle.text = @"SWIPE";
    _labelTitle.textAlignment = NSTextAlignmentCenter;
    _labelTitle.frame = CGRectMake(0, 50, self.view.frame.size.width, 50);
    [self.view addSubview:_labelTitle];
    
    _viewFirst = [[UIView alloc] initWithFrame:CGRectZero];
    _viewFirst.backgroundColor = [UIColor blueColor];
    _viewFirst.frame = CGRectMake(0, (self.view.frame.size.height/2) - 50, self.view.frame.size.width, 100);
    [self.view addSubview:_viewFirst];
    
    _viewSecond = [[UIView alloc] initWithFrame:CGRectZero];
    _viewSecond.backgroundColor = [UIColor yellowColor];
    _viewSecond.frame = CGRectMake(self.view.frame.size.width, (self.view.frame.size.height/2) - 50, self.view.frame.size.width, 100);
    [self.view addSubview:_viewSecond];
    
    _viewThird = [[UIView alloc] initWithFrame:CGRectZero];
    _viewThird.backgroundColor = [UIColor redColor];
    _viewThird.frame = CGRectMake(-self.view.frame.size.width, (self.view.frame.size.height/2) - 50, self.view.frame.size.width, 100);
    [self.view addSubview:_viewThird];
    
    UISwipeGestureRecognizer *swipeRightFirst = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToRightWithGestureRecognizer:)];
    swipeRightFirst.direction = UISwipeGestureRecognizerDirectionRight;
    
    UISwipeGestureRecognizer *swipeLeftFirst = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToLeftWithGestureRecognizer:)];
    swipeLeftFirst.direction = UISwipeGestureRecognizerDirectionLeft;
    
    [_viewFirst addGestureRecognizer:swipeRightFirst];
    [_viewFirst addGestureRecognizer:swipeLeftFirst];
    
    UISwipeGestureRecognizer *swipeRightSecond = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToRightWithGestureRecognizer:)];
    swipeRightSecond.direction = UISwipeGestureRecognizerDirectionRight;
    [_viewSecond addGestureRecognizer:swipeRightSecond];
    
    UISwipeGestureRecognizer *swipeLeftThird = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToLeftWithGestureRecognizer:)];
    swipeLeftThird.direction = UISwipeGestureRecognizerDirectionLeft;
    [_viewThird addGestureRecognizer:swipeLeftThird];

}


-(void)slideToRightWithGestureRecognizer:(UISwipeGestureRecognizer *)gestureRecognizer{
    [UIView animateWithDuration:0.5 animations:^{
        _viewFirst.frame = CGRectOffset(_viewFirst.frame, self.view.frame.size.width, 0.0);
        _viewSecond.frame = CGRectOffset(_viewSecond.frame, self.view.frame.size.width, 0.0);
        _viewThird.frame = CGRectOffset(_viewThird.frame, self.view.frame.size.width, 0.0);
    }];
}

-(void)slideToLeftWithGestureRecognizer:(UISwipeGestureRecognizer *)gestureRecognizer{
    [UIView animateWithDuration:0.5 animations:^{
        _viewFirst.frame = CGRectOffset(_viewFirst.frame, -self.view.frame.size.width, 0.0);
        _viewSecond.frame = CGRectOffset(_viewSecond.frame, -self.view.frame.size.width, 0.0);
        _viewThird.frame = CGRectOffset(_viewThird.frame, -self.view.frame.size.width, 0.0);
    }];
}




@end
