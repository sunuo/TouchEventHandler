//
//  VCGesturesVSControl.m
//  TouchEventHandlers
//
//  Created by xukaitiankevin on 24/10/2016.
//  Copyright © 2016 xukaitiankevin. All rights reserved.
//

#import "VCGesturesVSControl.h"
#import "VWJump.h"
@interface VCGesturesVSControl ()

@end

@implementation VCGesturesVSControl

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITapGestureRecognizer* tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGesture:)];
//    tap.cancelsTouchesInView = NO;
    [self.view addGestureRecognizer:tap];
    
    // Do any additional setup after loading the view.
    VWJumpControl* jump = [[VWJumpControl alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.frame),CGRectGetHeight(self.view.frame)/2)];
    [jump addTarget:self action:@selector(controlTap:) forControlEvents:UIControlEventTouchUpInside];
//    [jump addTarget:self action:@selector(controlTap:) forControlEvents:UIControlEventTouchDown];
    [jump setBackgroundColor:[UIColor redColor]];
    [jump setAlpha:0.5];
    
    [self.view addSubview:jump];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)tapGesture:(id)sender
{
    static BOOL color = YES;
    [self.view setBackgroundColor:color?[UIColor lightGrayColor]:[UIColor whiteColor]];
    color = !color;
}

-(void)controlTap:(id)sender
{
//    S_ALERT(@"Jump", @"Jump");//由于alert会阻挡touch事件，所以我们将其改成了log形式
    NSLog(@"Jump, Jump");
}
@end
