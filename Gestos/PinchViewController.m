//
//  PinchViewController.m
//  Gestos
//
//  Created by Daniel Maia dos Passos on 25/05/17.
//  Copyright © 2017 Daniel Maia. All rights reserved.
//

#import "PinchViewController.h"

@interface PinchViewController ()

@property (nonatomic, strong) UILabel *labelTitle;
@property (nonatomic, strong) UIView *viewPinch;

@end

@implementation PinchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _labelTitle = [[UILabel alloc] initWithFrame:CGRectZero];
    _labelTitle.textColor = [UIColor blueColor];
    _labelTitle.text = @"PINCH";
    _labelTitle.textAlignment = NSTextAlignmentCenter;
    _labelTitle.frame = CGRectMake(0, 50, self.view.frame.size.width, 50);
    [self.view addSubview:_labelTitle];
    
    _viewPinch = [[UIView alloc] initWithFrame:CGRectZero];
    _viewPinch.backgroundColor = [UIColor blueColor];
    _viewPinch.frame = CGRectMake((self.view.frame.size.width/2) - 100, (self.view.frame.size.height/2) - 100, 200, 200);
    [self.view addSubview:_viewPinch];
    
    UIPinchGestureRecognizer *pinchGestureRecognizer = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(handlePinchWithGestureRecognizer:)];
    [_viewPinch addGestureRecognizer:pinchGestureRecognizer];
}


-(void)handlePinchWithGestureRecognizer:(UIPinchGestureRecognizer *)pinchGestureRecognizer{
    pinchGestureRecognizer.view.transform = CGAffineTransformScale(pinchGestureRecognizer.view.transform, pinchGestureRecognizer.scale, pinchGestureRecognizer.scale);
    pinchGestureRecognizer.scale = 1.0;
    _viewPinch.transform = CGAffineTransformScale(_viewPinch.transform, pinchGestureRecognizer.scale, pinchGestureRecognizer.scale);
    
}


@end
