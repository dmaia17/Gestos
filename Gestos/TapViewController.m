//
//  TapViewController.m
//  Gestos
//
//  Created by Daniel Maia dos Passos on 25/05/17.
//  Copyright © 2017 Daniel Maia. All rights reserved.
//


#import "TapViewController.h"

@interface TapViewController ()

@property (nonatomic, strong) UILabel *labelTitle;
@property (nonatomic, strong) UIView *viewTap;

@end

@implementation TapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _labelTitle = [[UILabel alloc] initWithFrame:CGRectZero];
    _labelTitle.textColor = [UIColor blueColor];
    _labelTitle.text = @"TAP";
    _labelTitle.textAlignment = NSTextAlignmentCenter;
    _labelTitle.frame = CGRectMake(0, 50, self.view.frame.size.width, 50);
    [self.view addSubview:_labelTitle];
    
    _viewTap = [[UIView alloc] initWithFrame:CGRectZero];
    _viewTap.backgroundColor = [UIColor blueColor];
    _viewTap.frame = CGRectMake((self.view.frame.size.width/2) - 50, (self.view.frame.size.height/2) - 50, 100, 100);
    [self.view addSubview:_viewTap];
    
    UITapGestureRecognizer *singleTapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleTapGesture:)];
    [_viewTap addGestureRecognizer:singleTapGestureRecognizer];
}

-(void)handleSingleTapGesture:(UITapGestureRecognizer *)tapGestureRecognizer{
    CGSize newSize = CGSizeMake(100.0, 100.0);
    if (_viewTap.frame.size.width == 100.0) {
        newSize.width = 200.0;
        newSize.height = 200.0;
    }
    
    CGPoint currentCenter = _viewTap.center;
    
    _viewTap.frame = CGRectMake(_viewTap.frame.origin.x, _viewTap.frame.origin.y, newSize.width, newSize.height);
    _viewTap.center = currentCenter;
}


@end













