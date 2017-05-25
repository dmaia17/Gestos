//
//  RotationViewController.m
//  Gestos
//
//  Created by Daniel Maia dos Passos on 25/05/17.
//  Copyright © 2017 Daniel Maia. All rights reserved.
//

#import "RotationViewController.h"

@interface RotationViewController ()

@property (nonatomic, strong) UILabel *labelTitle;
@property (nonatomic, strong) UIView *viewRotate;

@end

@implementation RotationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _labelTitle = [[UILabel alloc] initWithFrame:CGRectZero];
    _labelTitle.textColor = [UIColor blueColor];
    _labelTitle.text = @"ROTATE";
    _labelTitle.textAlignment = NSTextAlignmentCenter;
    _labelTitle.frame = CGRectMake(0, 50, self.view.frame.size.width, 50);
    [self.view addSubview:_labelTitle];
    
    _viewRotate = [[UIView alloc] initWithFrame:CGRectZero];
    _viewRotate.backgroundColor = [UIColor blueColor];
    _viewRotate.frame = CGRectMake((self.view.frame.size.width/2) - 100, (self.view.frame.size.height/2) - 100, 200, 200);
    [self.view addSubview:_viewRotate];
    
    UIRotationGestureRecognizer *rotationGestureRecognizer = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(handleRotationWithGestureRecognizer:)];
    [_viewRotate addGestureRecognizer:rotationGestureRecognizer];
}

-(void)handleRotationWithGestureRecognizer:(UIRotationGestureRecognizer *)rotationGestureRecognizer{
    _viewRotate.transform = CGAffineTransformRotate(_viewRotate.transform, rotationGestureRecognizer.rotation);
    rotationGestureRecognizer.rotation = 0.0;
}



@end
